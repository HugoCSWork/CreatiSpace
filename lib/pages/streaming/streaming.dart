import 'dart:async';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'package:creatispace/pages/streaming/widgets/agora.dart';
import 'package:creatispace/pages/streaming/widgets/message_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Streaming extends StatefulWidget {
  final String channelName;
  final ClientRole role;
  final String channelId;
  final String hostId;
  final int uid;
  const Streaming({Key key, this.channelName, this.role, this.channelId, this.hostId, this.uid}) : super(key: key);

  @override
  _StreamingState createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
  final _users = <int>[];
  bool muted = false;
  bool showMessages = false;
  RtcEngine _engine;
  final String APP_ID = "40f7f278f4e24172964d899bc517ef40";

  @override
  void dispose() {
    _users.clear();
    _engine.leaveChannel();
    _engine.destroy();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    await _initAgoraRtcEngine();
    _addAgoraEventHandlers();
    VideoEncoderConfiguration configuration = VideoEncoderConfiguration();
    configuration.dimensions = VideoDimensions(1920, 1080);
    await _engine.setVideoEncoderConfiguration(configuration);
    await _engine.joinChannel(widget.channelId, widget.channelName, null, widget.uid);
  }

  Future<void> _initAgoraRtcEngine() async {
    _engine = await RtcEngine.create(APP_ID);
    await _engine.enableVideo();
    await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine.setClientRole(widget.role);
  }

  void _addAgoraEventHandlers() {
    _engine.setEventHandler(RtcEngineEventHandler(error: (code) {
      setState(() {
      });
    }, userJoined: (uid, elapsed) {
      setState(() {
        _users.add(uid);
      });
    }, userOffline: (uid, elapsed) {
      setState(() {
        _users.remove(uid);
      });
      if(uid == -31234523) {
        ExtendedNavigator.of(context).pop('done');
      }
    }, firstRemoteVideoFrame: (uid, width, height, elapsed) {
    },
    ));
  }

  List<Widget> _getRenderViews() {
    final List<StatefulWidget> list = [];
    if (widget.role == ClientRole.Broadcaster) {
      list.add(RtcLocalView.SurfaceView());
    }
    _users.forEach((int uid) => list.add(RtcRemoteView.SurfaceView(uid: uid)));
    return list;
  }

  Widget _videoView(Widget view) {
    return Expanded(child: Container(child: view));
  }

  Widget _expandedVideoRow(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Expanded(
      child: Row(
        children: wrappedViews,
      ),
    );
  }

  Widget _viewRows() {
    final views = _getRenderViews();
    switch (views.length) {
      case 1:
        return Column(
          children: [
            Container(
              height: showMessages ? 300 : MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[_videoView(views[0])],
              )),
            ],
        );
      case 2:
        return Container(
            child: Column(
              children: <Widget>[
                _expandedVideoRow([views[0]]),
                _expandedVideoRow([views[1]])
              ],
            ));
      case 3:
        return Container(
            child: Column(
              children: <Widget>[
                _expandedVideoRow(views.sublist(0, 2)),
                _expandedVideoRow(views.sublist(2, 3))
              ],
            ));
      case 4:
        return Container(
            child: Column(
              children: <Widget>[
                _expandedVideoRow(views.sublist(0, 2)),
                _expandedVideoRow(views.sublist(2, 4))
              ],
            ));
      default:
        return Container();
    }
  }





  void _onToggleMute() {
    setState(() {
      muted = !muted;
    });
    _engine.muteLocalAudioStream(muted);
  }

  void _onSwitchCamera() {
    _engine.switchCamera();
  }

  void _onSwitchMessage() {
    setState(() {
      showMessages = !showMessages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          children: <Widget>[
            _viewRows(),
            showMessages ? Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 16, 0),
                child: Column(
                  children: [
                    toolbarWithChat(context, widget.role, ClientRole.Audience, muted, _onToggleMute,
                    _onSwitchCamera, _onSwitchMessage)
                  ],
                ),
              )
            ) :  toolbar(context, widget.role, widget.channelName, ClientRole.Audience, muted, _onToggleMute,
                _onSwitchCamera, _onSwitchMessage),
            showMessages
                ? BlocBuilder<StreamConversationWatcherBloc, StreamConversationWatcherState>(
              builder: (context, state) {
                return state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => Container(),
                    loadSuccess: (state) {
                      return Container(
                          margin: EdgeInsets.only(top: 300),
                          height:   MediaQuery.of(context).size.height - 300,
                          child: ListView.builder(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                            itemBuilder: (context, index) {
                              final item = state.items[index];
                              return Container(
                                child: Text(
                                  '${item.username} - ${item.message}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8.0)),
                                margin: EdgeInsets.only(
                                    bottom: 10.0,
                                    right: 0),
                              );
                            },
                            itemCount: state.items.size,
                          ),
                      );
                    },
                    loadFailure: (_) => Container()
                );
              },
            )
                : Container(),
            showMessages
                ? Align(
              alignment: Alignment.bottomLeft,
                child: StreamMessagingInput(workshopId: widget.channelName, peerId: widget.hostId)
            ) : Container()

          ],
        ),
    );
  }
}



// showMessages ? StreamMessagingInput(workshopId: widget.channelId, peerId: widget.hostId) : Container(),

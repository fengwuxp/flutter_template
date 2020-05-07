//package com.fengwuxp.flutter.example.eventbus;
//
//
///**
// * flutter 生命周期事件
// */
//public final class FlutterLifecycleEvent {
//
//
//    public static enum Lifecycle {
//
//        CREATED,
//        DESTROY
//    }
//
//    private FlutterLifecycleEvent(Lifecycle lifecycle) {
//        this.lifecycle = lifecycle;
//    }
//
//    private Lifecycle lifecycle;
//
//
//    public Lifecycle getLifecycle() {
//        return lifecycle;
//    }
//
//    public static FlutterLifecycleEvent createdEvent() {
//        return new FlutterLifecycleEvent(Lifecycle.CREATED);
//    }
//}

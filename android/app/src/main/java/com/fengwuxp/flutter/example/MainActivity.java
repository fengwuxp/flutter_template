package com.fengwuxp.flutter.example;

import android.os.Bundle;
import android.os.PersistableBundle;

import java.lang.ref.WeakReference;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity {

    public static WeakReference<MainActivity> sRef;

    private static final String TAG = "MainActivity";

    private volatile boolean isOpen = false;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState, @Nullable PersistableBundle persistentState) {
        super.onCreate(savedInstanceState);
//        sRef = new WeakReference<>(this);
    }


    @Override
    protected void onStart() {
        super.onStart();
        if (!this.isOpen) {
            this.isOpen = true;
            AppRouter.home(this, null);
            finish();
        }
    }

//    @Override
//    public void onStop() {
//        super.onStop();
//    }

//    @Subscribe(threadMode = ThreadMode.MAIN)
//    public void onMessageEvent(FlutterLifecycleEvent event) {
//        Log.i(TAG, "on event message ");
//        if (FlutterLifecycleEvent.Lifecycle.CREATED.equals(event.getLifecycle())) {
//            AppRouter.home(this, null);
//        }
//    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
//        sRef.clear();
//        sRef = null;
    }

}

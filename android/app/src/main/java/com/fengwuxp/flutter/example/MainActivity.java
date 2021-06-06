package com.fengwuxp.flutter.example;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.idlefish.flutterboost.containers.FlutterBoostActivity;


/**
 * @author wuxp
 */
public class MainActivity extends FlutterBoostActivity {

    private static final String TAG = MainActivity.class.getSimpleName();

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.i(TAG, "flutter boost onCreate");
    }

}

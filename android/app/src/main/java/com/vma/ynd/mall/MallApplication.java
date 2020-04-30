package com.vma.ynd.mall;

import android.app.Application;
import android.util.Log;

import com.idlefish.flutterboost.FlutterBoost;
import com.idlefish.flutterboost.Platform;
import com.idlefish.flutterboost.Utils;
import com.idlefish.flutterboost.interfaces.INativeRouter;


import io.flutter.embedding.android.FlutterView;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MallApplication extends Application {

    private static final String TAG = "MallApplication";


    @Override
    public void onCreate() {
        super.onCreate();


        INativeRouter router = (context, url, urlParams, requestCode, exts) -> {
            // 打开页面回调
            String assembleUrl = Utils.assembleUrl(url, urlParams);
            AppRouter.openPageByUrl(context, assembleUrl, urlParams);
        };


        FlutterBoost.BoostLifecycleListener boostLifecycleListener = new FlutterBoost.BoostLifecycleListener() {

            @Override
            public void beforeCreateEngine() {

            }

            @Override
            public void onEngineCreated() {
                Log.d(TAG, "on event crated");

            }

            @Override
            public void onPluginsRegistered() {

            }

            @Override
            public void onEngineDestroy() {

            }


        };

        //
        // AndroidManifest.xml 中必须要添加 flutterEmbedding 版本设置
        //
        //   <meta-data android:name="flutterEmbedding"
        //               android:value="2">
        //    </meta-data>
        // GeneratedPluginRegistrant 会自动生成 新的插件方式　
        //
        // 插件注册方式请使用
        //是在engine 创建后马上执行，放射形式调用
        FlutterEngine flutterEngine = FlutterBoost.instance().engineProvider();
        if (flutterEngine != null) {
            GeneratedPluginRegistrant.registerWith(flutterEngine);
        }


        Platform platform = new FlutterBoost
                .ConfigBuilder(this, router)
                .isDebug(true)
                .whenEngineStart(FlutterBoost.ConfigBuilder.ANY_ACTIVITY_CREATED)
                .renderMode(FlutterView.RenderMode.texture)
                .lifecycleListener(boostLifecycleListener)
                .build();
        FlutterBoost.instance().init(platform);


    }
}

package com.fengwuxp.flutter.example;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.Window;

/**
 * 启动图页面
 * <p>
 * TODO  设计为透明的，实现倒计时等
 * 社区闪屏图开源组件： https://github.com/bingoogolapple/BGABanner-Android
 * <p>
 * flutter 启动图设置流程：通过 {@link io.flutter.embedding.android.SplashScreen#createSplashView(Context, Bundle)} 渲染
 * 通过 {@link io.flutter.embedding.android.FlutterActivity#provideSplashScreen()} 方法获取 SplashScreen 的实例
 * <p>
 * 可以通过覆盖{@code #provideSplashScreen}方法，返回自定义的 SplashScreen 实现
 *
 * @author wuxp
 */
public class SplashActivity extends Activity {

    private static final int SPLASH_DISPLAY_TIMES = 3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().requestFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_splash);
        Handler handler = new Handler(Looper.myLooper());
        handler.postDelayed(() -> {
            Intent intent = new Intent(SplashActivity.this, MainActivity.class);
            startActivity(intent);
            SplashActivity.this.finish();
        }, SPLASH_DISPLAY_TIMES);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}

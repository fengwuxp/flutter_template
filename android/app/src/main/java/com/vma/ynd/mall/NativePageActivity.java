package com.vma.ynd.mall;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.HashMap;
import java.util.Map;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class NativePageActivity extends AppCompatActivity implements View.OnClickListener {

    private TextView mOpenNative;
    private TextView mOpenFlutter;
    private TextView mOpenFlutterFragment;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.native_page);

        mOpenNative = findViewById(R.id.open_native);
        mOpenFlutter = findViewById(R.id.open_flutter);
        mOpenFlutterFragment = findViewById(R.id.open_flutter_fragment);

        mOpenNative.setOnClickListener(this);
        mOpenFlutter.setOnClickListener(this);
        mOpenFlutterFragment.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Map params = new HashMap();
        params.put("test1", "v_test1");
        params.put("test2", "v_test2");

        if (v == mOpenNative) {
            AppRouter.openPageByUrl(this, AppRouter.NATIVE_PAGE_URL, params);
        } else if (v == mOpenFlutter) {
            AppRouter.openPageByUrl(this, AppRouter.FLUTTER_GOODS_DETAIL, params);
        } else if (v == mOpenFlutterFragment) {
            AppRouter.openPageByUrl(this, AppRouter.FLUTTER_FRAGMENT_PAGE_URL, params);
        }
    }
}
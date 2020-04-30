package com.vma.ynd.mall;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.idlefish.flutterboost.containers.BoostFlutterActivity;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;


/**
 * 应用路由
 * 如果是原生页面 路径规则为：native://
 * 如果是flutter页面 路径规则为：flutter://
 */
public class AppRouter {


    public static final String NATIVE_ROUTE_SCHEMA = "native://";
    public static final String FLUTTER_ROUTE_SCHEMA = "flutter://";

    public static final String NATIVE_PAGE_URL = NATIVE_ROUTE_SCHEMA + "native_page";

    public static final String FLUTTER_HOME = FLUTTER_ROUTE_SCHEMA + "home";
    public static final String FLUTTER_GOODS_DETAIL = FLUTTER_ROUTE_SCHEMA + "goods_detail";

    public static final String FLUTTER_FRAGMENT_PAGE_URL = FLUTTER_ROUTE_SCHEMA + "flutterFragmentPage";

    public final static Map<String, Object> PAGE_NAMES = new HashMap<String, Object>() {{

        put(NATIVE_PAGE_URL, NativePageActivity.class);
        put(FLUTTER_HOME, "home");
        put(FLUTTER_GOODS_DETAIL, "goods_detail");
    }};


    public static boolean home(Context context, Map params) {
        return openPageByUrl(context, FLUTTER_HOME, params, 0);
    }


    public static boolean openPageByUrl(Context context, String url, Map params) {
        return openPageByUrl(context, url, params, 0);
    }

    public static boolean openPageByUrl(Context context, String url, Map params, int requestCode) {

        String path = url.split("\\?")[0];

        Log.i("openPageByUrl", path);

        if (!PAGE_NAMES.containsKey(path)) {
            return false;
        }
        Object route = Objects.requireNonNull(PAGE_NAMES.get(path));
        if (route instanceof String) {
            Intent intent = BoostFlutterActivity.withNewEngine().url((String) route).params(params)
                    .backgroundMode(BoostFlutterActivity.BackgroundMode.opaque).build(context);
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                activity.startActivityForResult(intent, requestCode);
            } else {
                context.startActivity(intent);
            }
            return true;
        } else {
            context.startActivity(new Intent(context, (Class<?>) route));
            return true;
        }
    }
}

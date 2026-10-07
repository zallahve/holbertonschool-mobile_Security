package com.holberton.task4;

import android.os.Bundle;
import android.util.Base64;
import androidx.activity.ComponentActivity;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.holberton.task4.MainActivity;
import com.holberton.task4.ui.theme.ThemeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J\u0018\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u000e\u0010\b\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/holberton/task4/MainActivity;", "Landroidx/activity/ComponentActivity;", "<init>", "()V", "validateUserInput", "", "key", "", "encryptedFlag", "xorDecrypt", "encrypted", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app_debug"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MainActivity extends ComponentActivity {
    public static final int $stable = 0;
    private final String encryptedFlag = "BTYzMTAiMT0xKAssIg08MD4aOC1UOAhVRgUJSmZfBzEAHREDBDA7DzQMAwoAW1RBAh06Ig==";

    public final native boolean validateUserInput(String key);

    /* JADX INFO: Access modifiers changed from: private */
    public final String xorDecrypt(String encrypted, String key) {
        byte[] decoded = Base64.decode(encrypted, 0);
        StringBuilder sb = new StringBuilder();
        int length = decoded.length;
        for (int i = 0; i < length; i++) {
            int decryptedChar = decoded[i] ^ key.charAt(i % key.length());
            sb.append((char) decryptedChar);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        System.loadLibrary("task4native");
        EdgeToEdge.enable$default(this, null, null, 3, null);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(-1064412581, true, new Function2<Composer, Integer, Unit>() { // from class: com.holberton.task4.MainActivity.onCreate.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer $composer, int $changed) {
                ComposerKt.sourceInformation($composer, "C47@1819L504,47@1808L515:MainActivity.kt#wyyfml");
                if (($changed & 11) != 2 || !$composer.getSkipping()) {
                    final MainActivity mainActivity = MainActivity.this;
                    ThemeKt.Task4Theme(false, false, ComposableLambdaKt.rememberComposableLambda(-2138723406, true, new Function2<Composer, Integer, Unit>() { // from class: com.holberton.task4.MainActivity.onCreate.1.1

                        /* JADX INFO: renamed from: com.holberton.task4.MainActivity$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
                        /* JADX INFO: compiled from: MainActivity.kt */
                        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                        static final class C01621 implements Function3<PaddingValues, Composer, Integer, Unit> {
                            final /* synthetic */ MainActivity this$0;

                            C01621(MainActivity mainActivity) {
                                this.this$0 = mainActivity;
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(PaddingValues paddingValues, Composer composer, Integer num) {
                                invoke(paddingValues, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(PaddingValues innerPadding, Composer $composer, int $changed) {
                                Object value$iv;
                                Object value$iv2;
                                Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
                                ComposerKt.sourceInformation($composer, "C51@2072L41,52@2153L49,50@2011L280:MainActivity.kt#wyyfml");
                                int $dirty = $changed;
                                if (($changed & 14) == 0) {
                                    $dirty |= $composer.changed(innerPadding) ? 4 : 2;
                                }
                                if (($dirty & 91) != 18 || !$composer.getSkipping()) {
                                    $composer.startReplaceGroup(-631361802);
                                    ComposerKt.sourceInformation($composer, "CC(remember):MainActivity.kt#9igjgp");
                                    boolean invalid$iv = $composer.changed(this.this$0);
                                    final MainActivity mainActivity = this.this$0;
                                    Object it$iv = $composer.rememberedValue();
                                    if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                        value$iv = new Function1() { // from class: com.holberton.task4.MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj) {
                                                return Boolean.valueOf(MainActivity.AnonymousClass1.C01611.C01621.invoke$lambda$1$lambda$0(mainActivity, (String) obj));
                                            }
                                        };
                                        $composer.updateRememberedValue(value$iv);
                                    } else {
                                        value$iv = it$iv;
                                    }
                                    Function1 function1 = (Function1) value$iv;
                                    $composer.endReplaceGroup();
                                    $composer.startReplaceGroup(-631359202);
                                    ComposerKt.sourceInformation($composer, "CC(remember):MainActivity.kt#9igjgp");
                                    boolean invalid$iv2 = $composer.changed(this.this$0);
                                    final MainActivity mainActivity2 = this.this$0;
                                    Object it$iv2 = $composer.rememberedValue();
                                    if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                        value$iv2 = new Function1() { // from class: com.holberton.task4.MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj) {
                                                return MainActivity.AnonymousClass1.C01611.C01621.invoke$lambda$3$lambda$2(mainActivity2, (String) obj);
                                            }
                                        };
                                        $composer.updateRememberedValue(value$iv2);
                                    } else {
                                        value$iv2 = it$iv2;
                                    }
                                    $composer.endReplaceGroup();
                                    MainActivityKt.InputValidationScreen(function1, (Function1) value$iv2, PaddingKt.padding(Modifier.INSTANCE, innerPadding), $composer, 0, 0);
                                    return;
                                }
                                $composer.skipToGroupEnd();
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            public static final boolean invoke$lambda$1$lambda$0(MainActivity this$0, String userKey) {
                                Intrinsics.checkNotNullParameter(this$0, "this$0");
                                Intrinsics.checkNotNullParameter(userKey, "userKey");
                                return this$0.validateUserInput(userKey);
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            public static final String invoke$lambda$3$lambda$2(MainActivity this$0, String userKey) {
                                Intrinsics.checkNotNullParameter(this$0, "this$0");
                                Intrinsics.checkNotNullParameter(userKey, "userKey");
                                return this$0.xorDecrypt(this$0.encryptedFlag, userKey);
                            }
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer2, int $changed2) {
                            ComposerKt.sourceInformation($composer2, "C48@1881L428,48@1837L472:MainActivity.kt#wyyfml");
                            if (($changed2 & 11) != 2 || !$composer2.getSkipping()) {
                                ScaffoldKt.m2119ScaffoldTvnljyQ(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), null, null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(916489283, true, new C01621(mainActivity), $composer2, 54), $composer2, 805306374, 510);
                            } else {
                                $composer2.skipToGroupEnd();
                            }
                        }
                    }, $composer, 54), $composer, 384, 3);
                } else {
                    $composer.skipToGroupEnd();
                }
            }
        }), 1, null);
    }
}

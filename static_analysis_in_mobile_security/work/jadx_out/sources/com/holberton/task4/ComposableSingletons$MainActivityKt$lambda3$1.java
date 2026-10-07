package com.holberton.task4;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.holberton.task4.ComposableSingletons$MainActivityKt$lambda-3$1, reason: invalid class name */
/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class ComposableSingletons$MainActivityKt$lambda3$1 implements Function2<Composer, Integer, Unit> {
    public static final ComposableSingletons$MainActivityKt$lambda3$1 INSTANCE = new ComposableSingletons$MainActivityKt$lambda3$1();

    ComposableSingletons$MainActivityKt$lambda3$1() {
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C119@4064L111:MainActivity.kt#wyyfml");
        if (($changed & 11) != 2 || !$composer.getSkipping()) {
            MainActivityKt.InputValidationScreen(new Function1() { // from class: com.holberton.task4.ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ComposableSingletons$MainActivityKt$lambda3$1.invoke$lambda$0((String) obj));
                }
            }, new Function1() { // from class: com.holberton.task4.ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ComposableSingletons$MainActivityKt$lambda3$1.invoke$lambda$1((String) obj);
                }
            }, null, $composer, 54, 4);
        } else {
            $composer.skipToGroupEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String invoke$lambda$1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return "DummyFlag";
    }
}

package androidx.compose.material;

import androidx.autofill.HintConstants;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: BottomSheetScaffold.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0093\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2'\u0010\r\u001a#\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f¢\u0006\u0002\b H\u0003ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001aÞ\u0002\u0010#\u001a\u00020\b2\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f¢\u0006\u0002\b 2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010%\u001a\u00020&2\u0015\b\u0002\u0010'\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2\u0019\b\u0002\u0010)\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f2\u0015\b\u0002\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2\b\b\u0002\u0010,\u001a\u00020-2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010.\u001a\u00020\u00012 \b\u0002\u0010/\u001a\u001a\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\b\u0018\u00010\u000e¢\u0006\u0002\b\u001f¢\u0006\u0002\b 2\b\b\u0002\u00100\u001a\u00020\f2\b\b\u0002\u00101\u001a\u00020\u00162\b\b\u0002\u00102\u001a\u00020\u00012\b\b\u0002\u00103\u001a\u00020\u00192\b\b\u0002\u00104\u001a\u00020\u00192\b\b\u0002\u00105\u001a\u00020\u00192\b\b\u0002\u00106\u001a\u00020\u00192\b\b\u0002\u00107\u001a\u00020\u00192\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001fH\u0007ø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a\u0080\u0002\u0010#\u001a\u00020\b2\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f¢\u0006\u0002\b 2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010%\u001a\u00020&2\u0015\b\u0002\u0010'\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2\u0019\b\u0002\u0010)\u001a\u0013\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f2\u0015\b\u0002\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2\b\b\u0002\u0010,\u001a\u00020-2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010.\u001a\u00020\u00012\b\b\u0002\u00106\u001a\u00020\u00192\b\b\u0002\u00107\u001a\u00020\u00192\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001fH\u0007ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001aÅ\u0001\u0010=\u001a\u00020\b2\u0013\u0010'\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2&\u0010>\u001a\"\u0012\u0013\u0012\u001108¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(?\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f2&\u0010@\u001a\"\u0012\u0013\u0012\u00110A¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\b\u001f2\u0013\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010(¢\u0006\u0002\b\u001f2\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\b0(¢\u0006\u0002\b\u001f2\u0006\u0010.\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020D0(2\u0006\u0010E\u001a\u00020\nH\u0003ø\u0001\u0000¢\u0006\u0004\bF\u0010G\u001a4\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u000e\b\u0002\u0010J\u001a\b\u0012\u0004\u0012\u00020D0K2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f0\u000eH\u0007\u001a \u0010H\u001a\u00020&2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\n2\u0006\u0010P\u001a\u00020*H\u0007\u001a>\u0010Q\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u0006\u0010R\u001a\u00020S2\u000e\b\u0002\u0010J\u001a\b\u0012\u0004\u0012\u00020D0K2\u0014\b\u0002\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f0\u000eH\u0007\u001a\u001c\u0010U\u001a\u00020V2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030W2\u0006\u0010X\u001a\u00020YH\u0002\u001a!\u0010Z\u001a\u00020&2\b\b\u0002\u0010O\u001a\u00020\n2\b\b\u0002\u0010P\u001a\u00020*H\u0007¢\u0006\u0002\u0010[\u001a+\u0010Z\u001a\u00020&2\b\b\u0002\u0010M\u001a\u00020N2\b\b\u0002\u0010O\u001a\u00020\n2\b\b\u0002\u0010P\u001a\u00020*H\u0007¢\u0006\u0002\u0010\\\u001a;\u0010]\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00142\u000e\b\u0002\u0010J\u001a\b\u0012\u0004\u0012\u00020D0K2\u0014\b\u0002\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\f0\u000eH\u0007¢\u0006\u0002\u0010^\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006_"}, d2 = {"BottomSheetScaffoldPositionalThreshold", "Landroidx/compose/ui/unit/Dp;", "F", "BottomSheetScaffoldVelocityThreshold", "BottomSheetScaffoldWithDrawerDeprecated", "", "FabSpacing", "BottomSheet", "", "state", "Landroidx/compose/material/BottomSheetState;", "sheetGesturesEnabled", "", "calculateAnchors", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "sheetSize", "Landroidx/compose/material/DraggableAnchors;", "Landroidx/compose/material/BottomSheetValue;", "sheetShape", "Landroidx/compose/ui/graphics/Shape;", "sheetElevation", "sheetBackgroundColor", "Landroidx/compose/ui/graphics/Color;", "sheetContentColor", "modifier", "Landroidx/compose/ui/Modifier;", "content", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "BottomSheet-0cLKjW4", "(Landroidx/compose/material/BottomSheetState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;FJJLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "BottomSheetScaffold", "sheetContent", "scaffoldState", "Landroidx/compose/material/BottomSheetScaffoldState;", "topBar", "Lkotlin/Function0;", "snackbarHost", "Landroidx/compose/material/SnackbarHostState;", "floatingActionButton", "floatingActionButtonPosition", "Landroidx/compose/material/FabPosition;", "sheetPeekHeight", "drawerContent", "drawerGesturesEnabled", "drawerShape", "drawerElevation", "drawerBackgroundColor", "drawerContentColor", "drawerScrimColor", "backgroundColor", "contentColor", "Landroidx/compose/foundation/layout/PaddingValues;", "BottomSheetScaffold-bGncdBI", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIII)V", "BottomSheetScaffold-HnlDQGw", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "BottomSheetScaffoldLayout", "body", "innerPadding", "bottomSheet", "", "layoutHeight", "sheetOffset", "", "sheetState", "BottomSheetScaffoldLayout-KCBPh4w", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function0;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V", "BottomSheetScaffoldState", "initialValue", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "confirmStateChange", "drawerState", "Landroidx/compose/material/DrawerState;", "bottomSheetState", "snackbarHostState", "BottomSheetState", "density", "Landroidx/compose/ui/unit/Density;", "confirmValueChange", "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/material/AnchoredDraggableState;", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "rememberBottomSheetScaffoldState", "(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;", "(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;", "rememberBottomSheetState", "(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class BottomSheetScaffoldKt {
    private static final String BottomSheetScaffoldWithDrawerDeprecated = "BottomSheetScaffold with a drawer has been deprecated. To achieve the same functionality, wrap your BottomSheetScaffold in aModalDrawer. See BottomSheetScaffoldWithDrawerSample for more details.";
    private static final float FabSpacing = Dp.m6111constructorimpl(16);
    private static final float BottomSheetScaffoldPositionalThreshold = Dp.m6111constructorimpl(56);
    private static final float BottomSheetScaffoldVelocityThreshold = Dp.m6111constructorimpl(125);

    public static /* synthetic */ BottomSheetState BottomSheetScaffoldState$default(BottomSheetValue bottomSheetValue, AnimationSpec animationSpec, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = AnchoredDraggableDefaults.INSTANCE.getAnimationSpec();
        }
        return BottomSheetScaffoldState(bottomSheetValue, (AnimationSpec<Float>) animationSpec, (Function1<? super BottomSheetValue, Boolean>) function1);
    }

    @Deprecated(message = "This constructor is deprecated. confirmStateChange has been renamed to confirmValueChange.", replaceWith = @ReplaceWith(expression = "BottomSheetScaffoldState(initialValue, animationSpec, confirmStateChange)", imports = {}))
    public static final BottomSheetState BottomSheetScaffoldState(BottomSheetValue initialValue, AnimationSpec<Float> animationSpec, Function1<? super BottomSheetValue, Boolean> function1) {
        return new BottomSheetState(initialValue, animationSpec, function1);
    }

    public static /* synthetic */ BottomSheetState BottomSheetState$default(BottomSheetValue bottomSheetValue, Density density, AnimationSpec animationSpec, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            animationSpec = AnchoredDraggableDefaults.INSTANCE.getAnimationSpec();
        }
        if ((i & 8) != 0) {
            function1 = new Function1<BottomSheetValue, Boolean>() { // from class: androidx.compose.material.BottomSheetScaffoldKt.BottomSheetState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(BottomSheetValue it) {
                    return true;
                }
            };
        }
        return BottomSheetState(bottomSheetValue, density, animationSpec, function1);
    }

    public static final BottomSheetState BottomSheetState(BottomSheetValue initialValue, Density density, AnimationSpec<Float> animationSpec, Function1<? super BottomSheetValue, Boolean> function1) {
        BottomSheetState it = new BottomSheetState(initialValue, animationSpec, function1);
        it.setDensity$material_release(density);
        return it;
    }

    public static final BottomSheetState rememberBottomSheetState(final BottomSheetValue initialValue, final AnimationSpec<Float> animationSpec, final Function1<? super BottomSheetValue, Boolean> function1, Composer $composer, int $changed, int i) {
        $composer.startReplaceableGroup(1808153344);
        ComposerKt.sourceInformation($composer, "C(rememberBottomSheetState)P(2)306@11010L7,307@11029L433:BottomSheetScaffold.kt#jmzs0o");
        if ((i & 2) != 0) {
            AnimationSpec animationSpec2 = AnchoredDraggableDefaults.INSTANCE.getAnimationSpec();
            animationSpec = animationSpec2;
        }
        if ((i & 4) != 0) {
            Function1 confirmStateChange = new Function1<BottomSheetValue, Boolean>() { // from class: androidx.compose.material.BottomSheetScaffoldKt.rememberBottomSheetState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(BottomSheetValue it) {
                    return true;
                }
            };
            function1 = confirmStateChange;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1808153344, $changed, -1, "androidx.compose.material.rememberBottomSheetState (BottomSheetScaffold.kt:305)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        final Density density = (Density) objConsume;
        BottomSheetState bottomSheetState = (BottomSheetState) RememberSaveableKt.m3380rememberSaveable(new Object[]{animationSpec}, (Saver) BottomSheetState.INSTANCE.Saver(animationSpec, function1, density), (String) null, (Function0) new Function0<BottomSheetState>() { // from class: androidx.compose.material.BottomSheetScaffoldKt.rememberBottomSheetState.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BottomSheetState invoke() {
                return BottomSheetScaffoldKt.BottomSheetState(initialValue, density, animationSpec, function1);
            }
        }, $composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceableGroup();
        return bottomSheetState;
    }

    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(BottomSheetState bottomSheetState, SnackbarHostState snackbarHostState, Composer $composer, int $changed, int i) {
        Object value$iv$iv;
        Object value$iv$iv2;
        $composer.startReplaceableGroup(-1022285988);
        ComposerKt.sourceInformation($composer, "C(rememberBottomSheetScaffoldState)346@12196L35,347@12276L32,349@12350L196:BottomSheetScaffold.kt#jmzs0o");
        if ((i & 1) != 0) {
            bottomSheetState = rememberBottomSheetState(BottomSheetValue.Collapsed, null, null, $composer, 6, 6);
        }
        if ((i & 2) != 0) {
            $composer.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv = $composer.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv2 = new SnackbarHostState();
                $composer.updateRememberedValue(value$iv$iv2);
            } else {
                value$iv$iv2 = it$iv$iv;
            }
            $composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) value$iv$iv2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1022285988, $changed, -1, "androidx.compose.material.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:348)");
        }
        int i2 = ($changed & 14) | ($changed & 112);
        $composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation($composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean invalid$iv$iv = $composer.changed(bottomSheetState) | $composer.changed(snackbarHostState);
        Object it$iv$iv2 = $composer.rememberedValue();
        if (invalid$iv$iv || it$iv$iv2 == Composer.INSTANCE.getEmpty()) {
            value$iv$iv = new BottomSheetScaffoldState(bottomSheetState, snackbarHostState);
            $composer.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv2;
        }
        $composer.endReplaceableGroup();
        BottomSheetScaffoldState bottomSheetScaffoldState = (BottomSheetScaffoldState) value$iv$iv;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceableGroup();
        return bottomSheetScaffoldState;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = BottomSheetScaffoldWithDrawerDeprecated)
    public static final BottomSheetScaffoldState BottomSheetScaffoldState(DrawerState drawerState, BottomSheetState bottomSheetState, SnackbarHostState snackbarHostState) {
        throw new IllegalStateException(BottomSheetScaffoldWithDrawerDeprecated.toString());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = BottomSheetScaffoldWithDrawerDeprecated)
    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(DrawerState drawerState, BottomSheetState bottomSheetState, SnackbarHostState snackbarHostState, Composer $composer, int $changed, int i) {
        Object value$iv$iv;
        $composer.startReplaceableGroup(-1353009744);
        ComposerKt.sourceInformation($composer, "C(rememberBottomSheetScaffoldState)P(1)385@13723L39,386@13805L35,387@13885L32:BottomSheetScaffold.kt#jmzs0o");
        if ((i & 1) != 0) {
            DrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer, 6, 2);
        }
        if ((i & 2) != 0) {
            rememberBottomSheetState(BottomSheetValue.Collapsed, null, null, $composer, 6, 6);
        }
        if ((i & 4) != 0) {
            $composer.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv = $composer.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new SnackbarHostState();
                $composer.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            $composer.endReplaceableGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1353009744, $changed, -1, "androidx.compose.material.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:388)");
        }
        throw new IllegalStateException(BottomSheetScaffoldWithDrawerDeprecated.toString());
    }

    /* JADX INFO: renamed from: BottomSheetScaffold-HnlDQGw, reason: not valid java name */
    public static final void m1243BottomSheetScaffoldHnlDQGw(final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Modifier modifier, BottomSheetScaffoldState scaffoldState, Function2<? super Composer, ? super Integer, Unit> function2, Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function32, Function2<? super Composer, ? super Integer, Unit> function22, int floatingActionButtonPosition, boolean sheetGesturesEnabled, Shape sheetShape, float sheetElevation, long sheetBackgroundColor, long sheetContentColor, float sheetPeekHeight, long backgroundColor, long contentColor, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        final BottomSheetScaffoldState scaffoldState2;
        int floatingActionButtonPosition2;
        Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function3M1312getLambda1$material_release;
        Function2<? super Composer, ? super Integer, Unit> function23;
        boolean sheetGesturesEnabled2;
        CornerBasedShape sheetShape2;
        float sheetElevation2;
        int $dirty1;
        long sheetBackgroundColor2;
        long sheetContentColor2;
        float sheetPeekHeight2;
        int $dirty12;
        long backgroundColor2;
        long sheetBackgroundColor3;
        int $dirty;
        float sheetPeekHeight3;
        long contentColor2;
        int $dirty13;
        long backgroundColor3;
        Function2<? super Composer, ? super Integer, Unit> function24;
        float sheetElevation3;
        float sheetElevation4;
        float sheetPeekHeight4;
        Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function34;
        Shape sheetShape3;
        int floatingActionButtonPosition3;
        boolean sheetGesturesEnabled3;
        Function2<? super Composer, ? super Integer, Unit> function25;
        long sheetContentColor3;
        long sheetBackgroundColor4;
        long contentColor3;
        long backgroundColor4;
        Function2<? super Composer, ? super Integer, Unit> function26;
        Modifier modifier3;
        BottomSheetScaffoldState scaffoldState3;
        Composer $composer2 = $composer.startRestartGroup(-423121424);
        ComposerKt.sourceInformation($composer2, "C(BottomSheetScaffold)P(8,5,6,15,14,3,4:c#material.FabPosition,11,13,10:c#ui.unit.Dp,7:c#ui.graphics.Color,9:c#ui.graphics.Color,12:c#ui.unit.Dp,0:c#ui.graphics.Color,2:c#ui.graphics.Color)438@17024L34,444@17393L6,446@17524L6,447@17571L37,449@17724L6,450@17769L32,454@17970L7,455@17982L75,*459@18100L7,460@18140L2377:BottomSheetScaffold.kt#jmzs0o");
        int $dirty2 = $changed;
        int $dirty14 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer2.changedInstance(function3) ? 4 : 2;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                scaffoldState2 = scaffoldState;
                int i3 = $composer2.changed(scaffoldState2) ? 256 : 128;
                $dirty2 |= i3;
            } else {
                scaffoldState2 = scaffoldState;
            }
            $dirty2 |= i3;
        } else {
            scaffoldState2 = scaffoldState;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 57344) == 0) {
            $dirty2 |= $composer2.changedInstance(function32) ? 16384 : 8192;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & 458752) == 0) {
            $dirty2 |= $composer2.changedInstance(function22) ? 131072 : 65536;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty2 |= 1572864;
            floatingActionButtonPosition2 = floatingActionButtonPosition;
        } else if (($changed & 3670016) == 0) {
            floatingActionButtonPosition2 = floatingActionButtonPosition;
            $dirty2 |= $composer2.changed(floatingActionButtonPosition2) ? 1048576 : 524288;
        } else {
            floatingActionButtonPosition2 = floatingActionButtonPosition;
        }
        int i8 = i & 128;
        if (i8 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 29360128) == 0) {
            $dirty2 |= $composer2.changed(sheetGesturesEnabled) ? 8388608 : 4194304;
        }
        if (($changed & 234881024) == 0) {
            $dirty2 |= ((i & 256) == 0 && $composer2.changed(sheetShape)) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i9 = i & 512;
        if (i9 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 1879048192) == 0) {
            $dirty2 |= $composer2.changed(sheetElevation) ? 536870912 : 268435456;
        }
        if (($changed1 & 14) == 0) {
            $dirty14 |= ((i & 1024) == 0 && $composer2.changed(sheetBackgroundColor)) ? 4 : 2;
        }
        if (($changed1 & 112) == 0) {
            $dirty14 |= ((i & 2048) == 0 && $composer2.changed(sheetContentColor)) ? 32 : 16;
        }
        int i10 = i & 4096;
        if (i10 != 0) {
            $dirty14 |= 384;
        } else if (($changed1 & 896) == 0) {
            $dirty14 |= $composer2.changed(sheetPeekHeight) ? 256 : 128;
        }
        if (($changed1 & 7168) == 0) {
            $dirty14 |= ((i & 8192) == 0 && $composer2.changed(backgroundColor)) ? 2048 : 1024;
        }
        if (($changed1 & 57344) == 0) {
            $dirty14 |= ((i & 16384) == 0 && $composer2.changed(contentColor)) ? 16384 : 8192;
        }
        if ((i & 32768) != 0) {
            $dirty14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & 458752) == 0) {
            $dirty14 |= $composer2.changedInstance(function33) ? 131072 : 65536;
        }
        if (($dirty2 & 1533916891) == 306783378 && (374491 & $dirty14) == 74898 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            function26 = function2;
            function34 = function32;
            function25 = function22;
            sheetGesturesEnabled3 = sheetGesturesEnabled;
            sheetShape3 = sheetShape;
            sheetElevation4 = sheetElevation;
            sheetBackgroundColor4 = sheetBackgroundColor;
            sheetContentColor3 = sheetContentColor;
            sheetPeekHeight4 = sheetPeekHeight;
            backgroundColor4 = backgroundColor;
            contentColor3 = contentColor;
            floatingActionButtonPosition3 = floatingActionButtonPosition2;
            modifier3 = modifier2;
            scaffoldState3 = scaffoldState2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                    scaffoldState2 = rememberBottomSheetScaffoldState(null, null, $composer2, 0, 3);
                }
                Function2<? super Composer, ? super Integer, Unit> function27 = i4 != 0 ? null : function2;
                function3M1312getLambda1$material_release = i5 != 0 ? ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.m1312getLambda1$material_release() : function32;
                function23 = i6 != 0 ? null : function22;
                if (i7 != 0) {
                    floatingActionButtonPosition2 = FabPosition.INSTANCE.m1363getEnd5ygKITE();
                }
                sheetGesturesEnabled2 = i8 != 0 ? true : sheetGesturesEnabled;
                Function2<? super Composer, ? super Integer, Unit> function28 = function27;
                if ((i & 256) != 0) {
                    sheetShape2 = MaterialTheme.INSTANCE.getShapes($composer2, 6).getLarge();
                    $dirty2 &= -234881025;
                } else {
                    sheetShape2 = sheetShape;
                }
                float sheetElevation5 = i9 != 0 ? BottomSheetScaffoldDefaults.INSTANCE.m1240getSheetElevationD9Ej5fM() : sheetElevation;
                if ((i & 1024) != 0) {
                    sheetElevation2 = sheetElevation5;
                    $dirty1 = $dirty14 & (-15);
                    sheetBackgroundColor2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1290getSurface0d7_KjU();
                } else {
                    sheetElevation2 = sheetElevation5;
                    $dirty1 = $dirty14;
                    sheetBackgroundColor2 = sheetBackgroundColor;
                }
                int $dirty3 = $dirty2;
                if ((i & 2048) != 0) {
                    sheetContentColor2 = ColorsKt.m1304contentColorForek8zF_U(sheetBackgroundColor2, $composer2, $dirty1 & 14);
                    $dirty1 &= -113;
                } else {
                    sheetContentColor2 = sheetContentColor;
                }
                float sheetPeekHeight5 = i10 != 0 ? BottomSheetScaffoldDefaults.INSTANCE.m1241getSheetPeekHeightD9Ej5fM() : sheetPeekHeight;
                if ((i & 8192) != 0) {
                    sheetPeekHeight2 = sheetPeekHeight5;
                    $dirty12 = $dirty1 & (-7169);
                    backgroundColor2 = MaterialTheme.INSTANCE.getColors($composer2, 6).m1279getBackground0d7_KjU();
                } else {
                    sheetPeekHeight2 = sheetPeekHeight5;
                    $dirty12 = $dirty1;
                    backgroundColor2 = backgroundColor;
                }
                sheetBackgroundColor3 = sheetBackgroundColor2;
                if ((i & 16384) != 0) {
                    $dirty = $dirty3;
                    contentColor2 = ColorsKt.m1304contentColorForek8zF_U(backgroundColor2, $composer2, ($dirty12 >> 9) & 14);
                    $dirty13 = $dirty12 & (-57345);
                    sheetPeekHeight3 = sheetPeekHeight2;
                    backgroundColor3 = backgroundColor2;
                    function24 = function28;
                    sheetElevation3 = sheetElevation2;
                } else {
                    $dirty = $dirty3;
                    sheetPeekHeight3 = sheetPeekHeight2;
                    contentColor2 = contentColor;
                    $dirty13 = $dirty12;
                    backgroundColor3 = backgroundColor2;
                    function24 = function28;
                    sheetElevation3 = sheetElevation2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 256) != 0) {
                    $dirty2 &= -234881025;
                }
                if ((i & 1024) != 0) {
                    $dirty14 &= -15;
                }
                if ((i & 2048) != 0) {
                    $dirty14 &= -113;
                }
                if ((i & 8192) != 0) {
                    $dirty14 &= -7169;
                }
                if ((i & 16384) != 0) {
                    int i11 = (-57345) & $dirty14;
                    function3M1312getLambda1$material_release = function32;
                    function23 = function22;
                    sheetGesturesEnabled2 = sheetGesturesEnabled;
                    sheetShape2 = sheetShape;
                    sheetBackgroundColor3 = sheetBackgroundColor;
                    sheetContentColor2 = sheetContentColor;
                    sheetPeekHeight3 = sheetPeekHeight;
                    backgroundColor3 = backgroundColor;
                    contentColor2 = contentColor;
                    $dirty13 = i11;
                    $dirty = $dirty2;
                    function24 = function2;
                    sheetElevation3 = sheetElevation;
                } else {
                    function24 = function2;
                    function3M1312getLambda1$material_release = function32;
                    function23 = function22;
                    sheetGesturesEnabled2 = sheetGesturesEnabled;
                    sheetShape2 = sheetShape;
                    sheetBackgroundColor3 = sheetBackgroundColor;
                    sheetContentColor2 = sheetContentColor;
                    backgroundColor3 = backgroundColor;
                    contentColor2 = contentColor;
                    $dirty = $dirty2;
                    $dirty13 = $dirty14;
                    sheetElevation3 = sheetElevation;
                    sheetPeekHeight3 = sheetPeekHeight;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-423121424, $dirty, $dirty13, "androidx.compose.material.BottomSheetScaffold (BottomSheetScaffold.kt:452)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Density density = (Density) objConsume;
            $composer2.startReplaceableGroup(1938007797);
            boolean invalid$iv = $composer2.changed(scaffoldState2) | $composer2.changed(density);
            long backgroundColor5 = backgroundColor3;
            Object value$iv = $composer2.rememberedValue();
            if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        scaffoldState2.getBottomSheetState().setDensity$material_release(density);
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            }
            $composer2.endReplaceableGroup();
            EffectsKt.SideEffect((Function0) value$iv, $composer2, 0);
            ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer2.consume(localDensity2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Density $this$BottomSheetScaffold_HnlDQGw_u24lambda_u245 = (Density) objConsume2;
            final float peekHeightPx = $this$BottomSheetScaffold_HnlDQGw_u24lambda_u245.mo313toPx0680j_4(sheetPeekHeight3);
            final BottomSheetScaffoldState bottomSheetScaffoldState = scaffoldState2;
            final Function2<? super Composer, ? super Integer, Unit> function29 = function24;
            final Function2<? super Composer, ? super Integer, Unit> function210 = function23;
            final float f = sheetPeekHeight3;
            final int i12 = floatingActionButtonPosition2;
            final boolean z = sheetGesturesEnabled2;
            final Shape shape = sheetShape2;
            final float f2 = sheetElevation3;
            final long j = sheetBackgroundColor3;
            final long j2 = sheetContentColor2;
            final Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function35 = function3M1312getLambda1$material_release;
            Function2<? super Composer, ? super Integer, Unit> function211 = function24;
            SurfaceKt.m1465SurfaceFjzlyU(SizeKt.fillMaxSize$default(modifier2, 0.0f, 1, null), null, backgroundColor5, contentColor2, null, 0.0f, ComposableLambdaKt.composableLambda($composer2, -131096268, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer3, int $changed2) {
                    Object value$iv2;
                    ComposerKt.sourceInformation($composer3, "C466@18279L2232:BottomSheetScaffold.kt#jmzs0o");
                    if (($changed2 & 11) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-131096268, $changed2, -1, "androidx.compose.material.BottomSheetScaffold.<anonymous> (BottomSheetScaffold.kt:466)");
                        }
                        BottomSheetState bottomSheetState = bottomSheetScaffoldState.getBottomSheetState();
                        Function2<Composer, Integer, Unit> function212 = function29;
                        Function3<PaddingValues, Composer, Integer, Unit> function36 = function33;
                        final boolean z2 = z;
                        final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                        final float f3 = f;
                        final float f4 = peekHeightPx;
                        final Shape shape2 = shape;
                        final float f5 = f2;
                        final long j3 = j;
                        final long j4 = j2;
                        final Function3<ColumnScope, Composer, Integer, Unit> function37 = function3;
                        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda($composer3, -1900337132, true, new Function3<Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Composer composer, Integer num2) {
                                invoke(num.intValue(), composer, num2.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(final int layoutHeight, Composer $composer4, int $changed3) {
                                Modifier.Companion companionNestedScroll$default;
                                Object value$iv3;
                                Object value$iv$iv;
                                ComposerKt.sourceInformation($composer4, "C481@19031L1038:BottomSheetScaffold.kt#jmzs0o");
                                int $dirty4 = $changed3;
                                if (($changed3 & 14) == 0) {
                                    $dirty4 |= $composer4.changed(layoutHeight) ? 4 : 2;
                                }
                                int $dirty5 = $dirty4;
                                if (($dirty5 & 91) != 18 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1900337132, $dirty5, -1, "androidx.compose.material.BottomSheetScaffold.<anonymous>.<anonymous> (BottomSheetScaffold.kt:470)");
                                    }
                                    $composer4.startReplaceableGroup(-816851224);
                                    ComposerKt.sourceInformation($composer4, "473@18566L390");
                                    if (z2) {
                                        Modifier.Companion companion = Modifier.INSTANCE;
                                        Object key1$iv = bottomSheetScaffoldState2.getBottomSheetState().getAnchoredDraggableState$material_release();
                                        BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                                        $composer4.startReplaceableGroup(1157296644);
                                        ComposerKt.sourceInformation($composer4, "CC(remember)P(1):Composables.kt#9igjgp");
                                        boolean invalid$iv$iv = $composer4.changed(key1$iv);
                                        Object it$iv$iv = $composer4.rememberedValue();
                                        if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                                            value$iv$iv = BottomSheetScaffoldKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(bottomSheetScaffoldState3.getBottomSheetState().getAnchoredDraggableState$material_release(), Orientation.Vertical);
                                            $composer4.updateRememberedValue(value$iv$iv);
                                        } else {
                                            value$iv$iv = it$iv$iv;
                                        }
                                        $composer4.endReplaceableGroup();
                                        companionNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion, (NestedScrollConnection) value$iv$iv, null, 2, null);
                                    } else {
                                        companionNestedScroll$default = Modifier.INSTANCE;
                                    }
                                    $composer4.endReplaceableGroup();
                                    Modifier nestedScroll = companionNestedScroll$default;
                                    BottomSheetState bottomSheetState2 = bottomSheetScaffoldState2.getBottomSheetState();
                                    Modifier modifierM602requiredHeightInVpY3zN4$default = SizeKt.m602requiredHeightInVpY3zN4$default(SizeKt.fillMaxWidth$default(nestedScroll, 0.0f, 1, null), f3, 0.0f, 2, null);
                                    boolean z3 = z2;
                                    $composer4.startReplaceableGroup(1938009097);
                                    boolean invalid$iv2 = $composer4.changed(layoutHeight) | $composer4.changed(f4);
                                    final float f6 = f4;
                                    Object it$iv = $composer4.rememberedValue();
                                    if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                                        value$iv3 = new Function1<IntSize, DraggableAnchors<BottomSheetValue>>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ DraggableAnchors<BottomSheetValue> invoke(IntSize intSize) {
                                                return m1249invokeozmzZPI(intSize.getPackedValue());
                                            }

                                            /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                                            public final DraggableAnchors<BottomSheetValue> m1249invokeozmzZPI(long sheetSize) {
                                                final float sheetHeight = IntSize.m6280getHeightimpl(sheetSize);
                                                final int i13 = layoutHeight;
                                                final float f7 = f6;
                                                return AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<BottomSheetValue>, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2$1$1$1.1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Unit invoke(DraggableAnchorsConfig<BottomSheetValue> draggableAnchorsConfig) {
                                                        invoke2(draggableAnchorsConfig);
                                                        return Unit.INSTANCE;
                                                    }

                                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                    public final void invoke2(DraggableAnchorsConfig<BottomSheetValue> draggableAnchorsConfig) {
                                                        draggableAnchorsConfig.at(BottomSheetValue.Collapsed, i13 - f7);
                                                        if (sheetHeight > 0.0f) {
                                                            if (!(sheetHeight == f7)) {
                                                                draggableAnchorsConfig.at(BottomSheetValue.Expanded, i13 - sheetHeight);
                                                            }
                                                        }
                                                    }
                                                });
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv3);
                                    } else {
                                        value$iv3 = it$iv;
                                    }
                                    $composer4.endReplaceableGroup();
                                    BottomSheetScaffoldKt.m1242BottomSheet0cLKjW4(bottomSheetState2, z3, (Function1) value$iv3, shape2, f5, j3, j4, modifierM602requiredHeightInVpY3zN4$default, function37, $composer4, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        });
                        Function2<Composer, Integer, Unit> function213 = function210;
                        final Function3<SnackbarHostState, Composer, Integer, Unit> function38 = function35;
                        final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                        ComposableLambda composableLambda2 = ComposableLambdaKt.composableLambda($composer3, -1011922215, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                invoke(composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C505@20187L45:BottomSheetScaffold.kt#jmzs0o");
                                if (($changed3 & 11) == 2 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1011922215, $changed3, -1, "androidx.compose.material.BottomSheetScaffold.<anonymous>.<anonymous> (BottomSheetScaffold.kt:505)");
                                }
                                function38.invoke(bottomSheetScaffoldState3.getSnackbarHostState(), $composer4, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        });
                        float f6 = f;
                        int i13 = i12;
                        $composer3.startReplaceableGroup(1938010078);
                        boolean invalid$iv2 = $composer3.changed(bottomSheetScaffoldState);
                        final BottomSheetScaffoldState bottomSheetScaffoldState4 = bottomSheetScaffoldState;
                        Object it$iv = $composer3.rememberedValue();
                        if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv2 = (Function0) new Function0<Float>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$2$3$1
                                {
                                    super(0);
                                }

                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final Float invoke() {
                                    return Float.valueOf(bottomSheetScaffoldState4.getBottomSheetState().requireOffset());
                                }
                            };
                            $composer3.updateRememberedValue(value$iv2);
                        } else {
                            value$iv2 = it$iv;
                        }
                        $composer3.endReplaceableGroup();
                        BottomSheetScaffoldKt.m1245BottomSheetScaffoldLayoutKCBPh4w(function212, function36, composableLambda, function213, composableLambda2, f6, i13, (Function0) value$iv2, bottomSheetState, $composer3, 24960);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, (($dirty13 >> 3) & 896) | 1572864 | (($dirty13 >> 3) & 7168), 50);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            sheetElevation4 = sheetElevation3;
            sheetPeekHeight4 = sheetPeekHeight3;
            function34 = function3M1312getLambda1$material_release;
            sheetShape3 = sheetShape2;
            floatingActionButtonPosition3 = floatingActionButtonPosition2;
            sheetGesturesEnabled3 = sheetGesturesEnabled2;
            function25 = function23;
            sheetContentColor3 = sheetContentColor2;
            sheetBackgroundColor4 = sheetBackgroundColor3;
            contentColor3 = contentColor2;
            backgroundColor4 = backgroundColor5;
            function26 = function211;
            modifier3 = modifier2;
            scaffoldState3 = scaffoldState2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final BottomSheetScaffoldState bottomSheetScaffoldState2 = scaffoldState3;
            final Function2<? super Composer, ? super Integer, Unit> function212 = function26;
            final Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function36 = function34;
            final Function2<? super Composer, ? super Integer, Unit> function213 = function25;
            final int i13 = floatingActionButtonPosition3;
            final boolean z2 = sheetGesturesEnabled3;
            final Shape shape2 = sheetShape3;
            final float f3 = sheetElevation4;
            final long j3 = sheetBackgroundColor4;
            final long j4 = sheetContentColor3;
            final float f4 = sheetPeekHeight4;
            final long j5 = backgroundColor4;
            final long j6 = contentColor3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i14) {
                    BottomSheetScaffoldKt.m1243BottomSheetScaffoldHnlDQGw(function3, modifier4, bottomSheetScaffoldState2, function212, function36, function213, i13, z2, shape2, f3, j3, j4, f4, j5, j6, function33, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x031c  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.ERROR, message = androidx.compose.material.BottomSheetScaffoldKt.BottomSheetScaffoldWithDrawerDeprecated)
    /* JADX INFO: renamed from: BottomSheetScaffold-bGncdBI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1244BottomSheetScaffoldbGncdBI(final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, final androidx.compose.ui.Modifier r41, final androidx.compose.material.BottomSheetScaffoldState r42, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, final kotlin.jvm.functions.Function3<? super androidx.compose.material.SnackbarHostState, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, final int r46, final boolean r47, final androidx.compose.ui.graphics.Shape r48, final float r49, final long r50, final long r52, final float r54, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r55, final boolean r56, final androidx.compose.ui.graphics.Shape r57, final float r58, final long r59, final long r61, final long r63, final long r65, final long r67, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.PaddingValues, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r69, androidx.compose.runtime.Composer r70, final int r71, final int r72, final int r73, final int r74) {
        /*
            Method dump skipped, instruction units count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt.m1244BottomSheetScaffoldbGncdBI(kotlin.jvm.functions.Function3, androidx.compose.ui.Modifier, androidx.compose.material.BottomSheetScaffoldState, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, int, boolean, androidx.compose.ui.graphics.Shape, float, long, long, float, kotlin.jvm.functions.Function3, boolean, androidx.compose.ui.graphics.Shape, float, long, long, long, long, long, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02aa  */
    /* JADX INFO: renamed from: BottomSheet-0cLKjW4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1242BottomSheet0cLKjW4(final androidx.compose.material.BottomSheetState r29, final boolean r30, final kotlin.jvm.functions.Function1<? super androidx.compose.ui.unit.IntSize, ? extends androidx.compose.material.DraggableAnchors<androidx.compose.material.BottomSheetValue>> r31, final androidx.compose.ui.graphics.Shape r32, final float r33, final long r34, final long r36, androidx.compose.ui.Modifier r38, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instruction units count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt.m1242BottomSheet0cLKjW4(androidx.compose.material.BottomSheetState, boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.graphics.Shape, float, long, long, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: BottomSheetScaffoldLayout-KCBPh4w, reason: not valid java name */
    public static final void m1245BottomSheetScaffoldLayoutKCBPh4w(final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function3<? super Integer, ? super Composer, ? super Integer, Unit> function32, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final float sheetPeekHeight, final int floatingActionButtonPosition, final Function0<Float> function0, final BottomSheetState sheetState, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(1621720523);
        ComposerKt.sourceInformation($composer4, "C(BottomSheetScaffoldLayout)P(8!3,7,5:c#ui.unit.Dp,3:c#material.FabPosition)687@28825L3007:BottomSheetScaffold.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer4.changedInstance(function3) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer4.changedInstance(function32) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer4.changedInstance(function22) ? 2048 : 1024;
        }
        if ((57344 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function23) ? 16384 : 8192;
        }
        if ((458752 & $changed) == 0) {
            $dirty |= $composer4.changed(sheetPeekHeight) ? 131072 : 65536;
        }
        if ((3670016 & $changed) == 0) {
            $dirty |= $composer4.changed(floatingActionButtonPosition) ? 1048576 : 524288;
        }
        if ((29360128 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function0) ? 8388608 : 4194304;
        }
        if ((234881024 & $changed) == 0) {
            $dirty |= $composer4.changed(sheetState) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int $dirty2 = $dirty;
        if ((191739611 & $dirty2) != 38347922 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1621720523, $dirty2, -1, "androidx.compose.material.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:686)");
            }
            $composer4.startReplaceableGroup(1938018646);
            boolean invalid$iv = $composer4.changedInstance(function32) | $composer4.changedInstance(function2) | $composer4.changedInstance(function3) | $composer4.changed(sheetPeekHeight) | $composer4.changedInstance(function22) | $composer4.changedInstance(function23) | $composer4.changedInstance(function0) | $composer4.changed(floatingActionButtonPosition) | $composer4.changed(sheetState);
            Object value$iv = $composer4.rememberedValue();
            if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                $composer2 = $composer4;
                value$iv = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1250invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
                    /* JADX WARN: Removed duplicated region for block: B:55:0x0206  */
                    /* JADX WARN: Removed duplicated region for block: B:71:0x024c  */
                    /* JADX INFO: renamed from: invoke-0kLqBqw, reason: not valid java name */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final androidx.compose.ui.layout.MeasureResult m1250invoke0kLqBqw(final androidx.compose.ui.layout.SubcomposeMeasureScope r35, long r36) {
                        /*
                            Method dump skipped, instruction units count: 878
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1.m1250invoke0kLqBqw(androidx.compose.ui.layout.SubcomposeMeasureScope, long):androidx.compose.ui.layout.MeasureResult");
                    }
                };
                $composer4.updateRememberedValue(value$iv);
            } else {
                $composer2 = $composer4;
            }
            $composer2.endReplaceableGroup();
            $composer3 = $composer2;
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) value$iv, $composer3, 0, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    BottomSheetScaffoldKt.m1245BottomSheetScaffoldLayoutKCBPh4w(function2, function3, function32, function22, function23, sheetPeekHeight, floatingActionButtonPosition, function0, sheetState, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BottomSheetScaffold.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\"\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u0015*\u00020\tH\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0014\u001a\u00020\u0015*\u00020\u0003H\u0003¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\t*\u00020\u0015H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001b"}, d2 = {"androidx/compose/material/BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", "source", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPreFling", "onPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPreScroll", "onPreScroll-OzD1aCk", "(JI)J", "toFloat", "", "offsetToFloat", "(J)F", "velocityToFloat", "toOffset", "(F)J", "material_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class C03771 implements NestedScrollConnection {
        final /* synthetic */ Orientation $orientation;
        final /* synthetic */ AnchoredDraggableState<?> $state;

        C03771(AnchoredDraggableState<?> anchoredDraggableState, Orientation $orientation) {
            this.$state = anchoredDraggableState;
            this.$orientation = $orientation;
        }

        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
        public long mo401onPreScrollOzD1aCk(long available, int source) {
            float delta = offsetToFloat(available);
            if (delta < 0.0f && NestedScrollSource.m4796equalsimpl0(source, NestedScrollSource.INSTANCE.m4801getDragWNlRxjI())) {
                return toOffset(this.$state.dispatchRawDelta(delta));
            }
            return Offset.INSTANCE.m3538getZeroF1C5BW0();
        }

        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
        public long mo400onPostScrollDzOQY0M(long consumed, long available, int source) {
            if (NestedScrollSource.m4796equalsimpl0(source, NestedScrollSource.INSTANCE.m4801getDragWNlRxjI())) {
                return toOffset(this.$state.dispatchRawDelta(offsetToFloat(available)));
            }
            return Offset.INSTANCE.m3538getZeroF1C5BW0();
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPreFling-QWom1Mo */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo641onPreFlingQWom1Mo(long r7, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r9) {
            /*
                r6 = this;
                boolean r0 = r9 instanceof androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPreFling$1
                if (r0 == 0) goto L14
                r0 = r9
                androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPreFling$1 r0 = (androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPreFling$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r1 = r1 & r2
                if (r1 == 0) goto L14
                int r9 = r0.label
                int r9 = r9 - r2
                r0.label = r9
                goto L19
            L14:
                androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPreFling$1 r0 = new androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPreFling$1
                r0.<init>(r6, r9)
            L19:
                r9 = r0
                java.lang.Object r0 = r9.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r9.label
                switch(r2) {
                    case 0: goto L33;
                    case 1: goto L2d;
                    default: goto L25;
                }
            L25:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L2d:
                long r7 = r9.J$0
                kotlin.ResultKt.throwOnFailure(r0)
                goto L62
            L33:
                kotlin.ResultKt.throwOnFailure(r0)
                r2 = r6
                float r3 = r2.velocityToFloat(r7)
                androidx.compose.material.AnchoredDraggableState<?> r4 = r2.$state
                float r4 = r4.requireOffset()
                r5 = 0
                int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r5 >= 0) goto L63
                androidx.compose.material.AnchoredDraggableState<?> r5 = r2.$state
                androidx.compose.material.DraggableAnchors r5 = r5.getAnchors()
                float r5 = r5.minAnchor()
                int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r5 <= 0) goto L63
                androidx.compose.material.AnchoredDraggableState<?> r4 = r2.$state
                r9.J$0 = r7
                r5 = 1
                r9.label = r5
                java.lang.Object r2 = r4.settle(r3, r9)
                if (r2 != r1) goto L62
                return r1
            L62:
                goto L69
            L63:
                androidx.compose.ui.unit.Velocity$Companion r7 = androidx.compose.ui.unit.Velocity.INSTANCE
                long r7 = r7.m6357getZero9UxMQ8M()
            L69:
                androidx.compose.ui.unit.Velocity r7 = androidx.compose.ui.unit.Velocity.m6337boximpl(r7)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt.C03771.mo641onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo399onPostFlingRZ2iAVY(long r5, long r7, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r9) {
            /*
                r4 = this;
                boolean r5 = r9 instanceof androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPostFling$1
                if (r5 == 0) goto L14
                r5 = r9
                androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPostFling$1 r5 = (androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPostFling$1) r5
                int r6 = r5.label
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r6 = r6 & r0
                if (r6 == 0) goto L14
                int r6 = r5.label
                int r6 = r6 - r0
                r5.label = r6
                goto L19
            L14:
                androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPostFling$1 r5 = new androidx.compose.material.BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1$onPostFling$1
                r5.<init>(r4, r9)
            L19:
                java.lang.Object r6 = r5.result
                java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r0 = r5.label
                switch(r0) {
                    case 0: goto L32;
                    case 1: goto L2c;
                    default: goto L24;
                }
            L24:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L2c:
                long r7 = r5.J$0
                kotlin.ResultKt.throwOnFailure(r6)
                goto L48
            L32:
                kotlin.ResultKt.throwOnFailure(r6)
                r0 = r4
                androidx.compose.material.AnchoredDraggableState<?> r1 = r0.$state
                float r2 = r0.velocityToFloat(r7)
                r5.J$0 = r7
                r3 = 1
                r5.label = r3
                java.lang.Object r0 = r1.settle(r2, r5)
                if (r0 != r9) goto L48
                return r9
            L48:
                androidx.compose.ui.unit.Velocity r9 = androidx.compose.ui.unit.Velocity.m6337boximpl(r7)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomSheetScaffoldKt.C03771.mo399onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
        }

        private final long toOffset(float $this$toOffset) {
            return OffsetKt.Offset(this.$orientation == Orientation.Horizontal ? $this$toOffset : 0.0f, this.$orientation == Orientation.Vertical ? $this$toOffset : 0.0f);
        }

        private final float velocityToFloat(long $this$toFloat) {
            return this.$orientation == Orientation.Horizontal ? Velocity.m6346getXimpl($this$toFloat) : Velocity.m6347getYimpl($this$toFloat);
        }

        private final float offsetToFloat(long $this$toFloat) {
            return this.$orientation == Orientation.Horizontal ? Offset.m3522getXimpl($this$toFloat) : Offset.m3523getYimpl($this$toFloat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NestedScrollConnection ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(AnchoredDraggableState<?> anchoredDraggableState, Orientation orientation) {
        return new C03771(anchoredDraggableState, orientation);
    }
}

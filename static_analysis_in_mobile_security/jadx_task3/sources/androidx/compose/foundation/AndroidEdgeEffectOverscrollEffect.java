package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.runtime.IntState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: AndroidOverscroll.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u00105\u001a\u00020+H\u0002J?\u00106\u001a\u00020+2\u0006\u00107\u001a\u0002082\"\u00109\u001a\u001e\b\u0001\u0012\u0004\u0012\u000208\u0012\n\u0012\b\u0012\u0004\u0012\u0002080;\u0012\u0006\u0012\u0004\u0018\u00010<0:H\u0096@ø\u0001\u0000¢\u0006\u0004\b=\u0010>J6\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020B2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020/0)H\u0016ø\u0001\u0000¢\u0006\u0004\bD\u0010EJ\b\u0010F\u001a\u00020+H\u0002J\"\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\bK\u0010LJ\"\u0010M\u001a\u00020H2\u0006\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\bN\u0010LJ\"\u0010O\u001a\u00020H2\u0006\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\bP\u0010LJ\"\u0010Q\u001a\u00020H2\u0006\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\bR\u0010LJ\u001a\u0010S\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020/H\u0002ø\u0001\u0000¢\u0006\u0004\bT\u0010UJ\b\u0010V\u001a\u00020\u001eH\u0002J \u0010W\u001a\u00020\u001e*\u00020X2\u0006\u0010Y\u001a\u00020\t2\n\u0010Z\u001a\u00060[j\u0002`\\H\u0002J \u0010]\u001a\u00020\u001e*\u00020X2\u0006\u0010^\u001a\u00020\t2\n\u0010Z\u001a\u00060[j\u0002`\\H\u0002J\n\u0010_\u001a\u00020+*\u00020XJ \u0010`\u001a\u00020\u001e*\u00020X2\u0006\u0010a\u001a\u00020\t2\n\u0010Z\u001a\u00060[j\u0002`\\H\u0002J \u0010b\u001a\u00020\u001e*\u00020X2\u0006\u0010c\u001a\u00020\t2\n\u0010Z\u001a\u00060[j\u0002`\\H\u0002R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u00020\u000fX\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R+\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001d\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\"R\u000e\u0010&\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\n\u0000R\u0016\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006d"}, d2 = {"Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "Landroidx/compose/foundation/OverscrollEffect;", "context", "Landroid/content/Context;", "overscrollConfig", "Landroidx/compose/foundation/OverscrollConfiguration;", "(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V", "allEffects", "", "Landroid/widget/EdgeEffect;", "bottomEffect", "bottomEffectNegation", "consumeCount", "", "containerSize", "Landroidx/compose/ui/geometry/Size;", "J", "effectModifier", "Landroidx/compose/ui/Modifier;", "getEffectModifier", "()Landroidx/compose/ui/Modifier;", "<set-?>", "invalidateCount", "getInvalidateCount", "()I", "setInvalidateCount", "(I)V", "invalidateCount$delegate", "Landroidx/compose/runtime/MutableIntState;", "invalidationEnabled", "", "getInvalidationEnabled$foundation_release$annotations", "()V", "getInvalidationEnabled$foundation_release", "()Z", "setInvalidationEnabled$foundation_release", "(Z)V", "isInProgress", "leftEffect", "leftEffectNegation", "onNewSize", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "rightEffect", "rightEffectNegation", "scrollCycleInProgress", "topEffect", "topEffectNegation", "animateToRelease", "applyToFling", "velocity", "Landroidx/compose/ui/unit/Velocity;", "performFling", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "applyToFling-BMRW4eQ", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyToScroll", "delta", "source", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "performScroll", "applyToScroll-Rhakbz0", "(JILkotlin/jvm/functions/Function1;)J", "invalidateOverscroll", "pullBottom", "", "scroll", "displacement", "pullBottom-0a9Yr6o", "(JJ)F", "pullLeft", "pullLeft-0a9Yr6o", "pullRight", "pullRight-0a9Yr6o", "pullTop", "pullTop-0a9Yr6o", "releaseOppositeOverscroll", "releaseOppositeOverscroll-k-4lQ0M", "(J)Z", "stopOverscrollAnimation", "drawBottom", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "bottom", "canvas", "Landroid/graphics/Canvas;", "Landroidx/compose/ui/graphics/NativeCanvas;", "drawLeft", "left", "drawOverscroll", "drawRight", "right", "drawTop", "top", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    public static final int $stable = 0;
    private final List<EdgeEffect> allEffects;
    private final EdgeEffect bottomEffect;
    private final EdgeEffect bottomEffectNegation;
    private int consumeCount;
    private long containerSize;
    private final Modifier effectModifier;

    /* JADX INFO: renamed from: invalidateCount$delegate, reason: from kotlin metadata */
    private final MutableIntState invalidateCount;
    private boolean invalidationEnabled;
    private final EdgeEffect leftEffect;
    private final EdgeEffect leftEffectNegation;
    private final Function1<IntSize, Unit> onNewSize;
    private final OverscrollConfiguration overscrollConfig;
    private PointerId pointerId;
    private Offset pointerPosition;
    private final EdgeEffect rightEffect;
    private final EdgeEffect rightEffectNegation;
    private boolean scrollCycleInProgress;
    private final EdgeEffect topEffect;
    private final EdgeEffect topEffectNegation;

    public static /* synthetic */ void getInvalidationEnabled$foundation_release$annotations() {
    }

    public AndroidEdgeEffectOverscrollEffect(Context context, OverscrollConfiguration overscrollConfig) {
        this.overscrollConfig = overscrollConfig;
        this.topEffect = EdgeEffectCompat.INSTANCE.create(context, null);
        this.bottomEffect = EdgeEffectCompat.INSTANCE.create(context, null);
        this.leftEffect = EdgeEffectCompat.INSTANCE.create(context, null);
        this.rightEffect = EdgeEffectCompat.INSTANCE.create(context, null);
        this.allEffects = CollectionsKt.listOf((Object[]) new EdgeEffect[]{this.leftEffect, this.topEffect, this.rightEffect, this.bottomEffect});
        this.topEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.bottomEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.leftEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.rightEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            EdgeEffect it = (EdgeEffect) item$iv;
            it.setColor(ColorKt.m3817toArgb8_81llA(this.overscrollConfig.getGlowColor()));
        }
        this.consumeCount = -1;
        this.invalidateCount = SnapshotIntStateKt.mutableIntStateOf(0);
        this.invalidationEnabled = true;
        this.containerSize = Size.INSTANCE.m3600getZeroNHjbRc();
        this.onNewSize = new Function1<IntSize, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$onNewSize$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                m192invokeozmzZPI(intSize.getPackedValue());
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
            public final void m192invokeozmzZPI(long size2) {
                boolean differentSize = !Size.m3587equalsimpl0(IntSizeKt.m6291toSizeozmzZPI(size2), this.this$0.containerSize);
                this.this$0.containerSize = IntSizeKt.m6291toSizeozmzZPI(size2);
                if (differentSize) {
                    this.this$0.topEffect.setSize(IntSize.m6281getWidthimpl(size2), IntSize.m6280getHeightimpl(size2));
                    this.this$0.bottomEffect.setSize(IntSize.m6281getWidthimpl(size2), IntSize.m6280getHeightimpl(size2));
                    this.this$0.leftEffect.setSize(IntSize.m6280getHeightimpl(size2), IntSize.m6281getWidthimpl(size2));
                    this.this$0.rightEffect.setSize(IntSize.m6280getHeightimpl(size2), IntSize.m6281getWidthimpl(size2));
                    this.this$0.topEffectNegation.setSize(IntSize.m6281getWidthimpl(size2), IntSize.m6280getHeightimpl(size2));
                    this.this$0.bottomEffectNegation.setSize(IntSize.m6281getWidthimpl(size2), IntSize.m6280getHeightimpl(size2));
                    this.this$0.leftEffectNegation.setSize(IntSize.m6280getHeightimpl(size2), IntSize.m6281getWidthimpl(size2));
                    this.this$0.rightEffectNegation.setSize(IntSize.m6280getHeightimpl(size2), IntSize.m6281getWidthimpl(size2));
                }
                if (differentSize) {
                    this.this$0.invalidateOverscroll();
                    this.this$0.animateToRelease();
                }
            }
        };
        this.effectModifier = OnRemeasuredModifierKt.onSizeChanged(SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE.then(AndroidOverscroll_androidKt.StretchOverscrollNonClippingLayer), Unit.INSTANCE, new AndroidEdgeEffectOverscrollEffect$effectModifier$1(this, null)), this.onNewSize).then(new DrawOverscrollModifier(this, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo $this$null) {
                $this$null.setName("overscroll");
                $this$null.setValue(this.this$0);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }

    private final int getInvalidateCount() {
        IntState $this$getValue$iv = this.invalidateCount;
        return $this$getValue$iv.getIntValue();
    }

    private final void setInvalidateCount(int i) {
        MutableIntState $this$setValue$iv = this.invalidateCount;
        $this$setValue$iv.setIntValue(i);
    }

    /* JADX INFO: renamed from: getInvalidationEnabled$foundation_release, reason: from getter */
    public final boolean getInvalidationEnabled() {
        return this.invalidationEnabled;
    }

    public final void setInvalidationEnabled$foundation_release(boolean z) {
        this.invalidationEnabled = z;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToScroll-Rhakbz0, reason: not valid java name */
    public long mo191applyToScrollRhakbz0(long delta, int source, Function1<? super Offset, Offset> performScroll) {
        float consumedPixelsY;
        boolean appliedHorizontalOverscroll;
        boolean appliedVerticalOverscroll;
        if (Size.m3593isEmptyimpl(this.containerSize)) {
            return performScroll.invoke(Offset.m3511boximpl(delta)).getPackedValue();
        }
        if (!this.scrollCycleInProgress) {
            stopOverscrollAnimation();
            this.scrollCycleInProgress = true;
        }
        Offset offset = this.pointerPosition;
        long pointer = offset != null ? offset.getPackedValue() : SizeKt.m3601getCenteruvyYCjk(this.containerSize);
        float consumedPixelsX = 0.0f;
        if (Offset.m3523getYimpl(delta) == 0.0f) {
            consumedPixelsY = 0.0f;
        } else {
            if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) == 0.0f) {
                if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f)) {
                    consumedPixelsY = m185pullBottom0a9Yr6o(delta, pointer);
                    if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f) {
                        this.bottomEffect.onRelease();
                    }
                } else {
                    consumedPixelsY = 0.0f;
                }
            } else {
                consumedPixelsY = m188pullTop0a9Yr6o(delta, pointer);
                if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) == 0.0f) {
                    this.topEffect.onRelease();
                }
            }
        }
        if (!(Offset.m3522getXimpl(delta) == 0.0f)) {
            if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f) {
                if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) == 0.0f)) {
                    float fM187pullRight0a9Yr6o = m187pullRight0a9Yr6o(delta, pointer);
                    if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) == 0.0f) {
                        this.rightEffect.onRelease();
                    }
                    consumedPixelsX = fM187pullRight0a9Yr6o;
                }
            } else {
                float fM186pullLeft0a9Yr6o = m186pullLeft0a9Yr6o(delta, pointer);
                if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f) {
                    this.leftEffect.onRelease();
                }
                consumedPixelsX = fM186pullLeft0a9Yr6o;
            }
        }
        long consumedOffset = OffsetKt.Offset(consumedPixelsX, consumedPixelsY);
        if (!Offset.m3519equalsimpl0(consumedOffset, Offset.INSTANCE.m3538getZeroF1C5BW0())) {
            invalidateOverscroll();
        }
        long leftForDelta = Offset.m3526minusMKHz9U(delta, consumedOffset);
        long consumedByDelta = performScroll.invoke(Offset.m3511boximpl(leftForDelta)).getPackedValue();
        long leftForOverscroll = Offset.m3526minusMKHz9U(leftForDelta, consumedByDelta);
        boolean needsInvalidation = false;
        if (NestedScrollSource.m4796equalsimpl0(source, NestedScrollSource.INSTANCE.m4801getDragWNlRxjI())) {
            if (Offset.m3522getXimpl(leftForOverscroll) > 0.5f) {
                m186pullLeft0a9Yr6o(leftForOverscroll, pointer);
                appliedHorizontalOverscroll = true;
            } else if (Offset.m3522getXimpl(leftForOverscroll) < -0.5f) {
                m187pullRight0a9Yr6o(leftForOverscroll, pointer);
                appliedHorizontalOverscroll = true;
            } else {
                appliedHorizontalOverscroll = false;
            }
            if (Offset.m3523getYimpl(leftForOverscroll) > 0.5f) {
                m188pullTop0a9Yr6o(leftForOverscroll, pointer);
                appliedVerticalOverscroll = true;
            } else if (Offset.m3523getYimpl(leftForOverscroll) < -0.5f) {
                m185pullBottom0a9Yr6o(leftForOverscroll, pointer);
                appliedVerticalOverscroll = true;
            } else {
                appliedVerticalOverscroll = false;
            }
            needsInvalidation = appliedHorizontalOverscroll || appliedVerticalOverscroll;
        }
        boolean appliedHorizontalOverscroll2 = m189releaseOppositeOverscrollk4lQ0M(delta);
        boolean needsInvalidation2 = appliedHorizontalOverscroll2 || needsInvalidation;
        if (needsInvalidation2) {
            invalidateOverscroll();
        }
        return Offset.m3527plusMKHz9U(consumedOffset, consumedByDelta);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo190applyToFlingBMRW4eQ(long r10, kotlin.jvm.functions.Function2<? super androidx.compose.ui.unit.Velocity, ? super kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity>, ? extends java.lang.Object> r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instruction units count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo190applyToFlingBMRW4eQ(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        List<EdgeEffect> list = this.allEffects;
        int index$iv$iv = 0;
        int size = list.size();
        while (true) {
            if (index$iv$iv >= size) {
                return false;
            }
            Object item$iv$iv = list.get(index$iv$iv);
            EdgeEffect it = (EdgeEffect) item$iv$iv;
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(it) == 0.0f)) {
                return true;
            }
            index$iv$iv++;
        }
    }

    private final boolean stopOverscrollAnimation() {
        boolean stopped = false;
        long fakeDisplacement = SizeKt.m3601getCenteruvyYCjk(this.containerSize);
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f)) {
            m186pullLeft0a9Yr6o(Offset.INSTANCE.m3538getZeroF1C5BW0(), fakeDisplacement);
            stopped = true;
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) == 0.0f)) {
            m187pullRight0a9Yr6o(Offset.INSTANCE.m3538getZeroF1C5BW0(), fakeDisplacement);
            stopped = true;
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) == 0.0f)) {
            m188pullTop0a9Yr6o(Offset.INSTANCE.m3538getZeroF1C5BW0(), fakeDisplacement);
            stopped = true;
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f)) {
            m185pullBottom0a9Yr6o(Offset.INSTANCE.m3538getZeroF1C5BW0(), fakeDisplacement);
            return true;
        }
        return stopped;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public Modifier getEffectModifier() {
        return this.effectModifier;
    }

    public final void drawOverscroll(DrawScope $this$drawOverscroll) {
        if (Size.m3593isEmptyimpl(this.containerSize)) {
            return;
        }
        Canvas it = $this$drawOverscroll.getDrawContext().getCanvas();
        this.consumeCount = getInvalidateCount();
        android.graphics.Canvas canvas = AndroidCanvas_androidKt.getNativeCanvas(it);
        boolean needsInvalidate = false;
        boolean z = true;
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffectNegation) == 0.0f)) {
            drawRight($this$drawOverscroll, this.leftEffectNegation, canvas);
            this.leftEffectNegation.finish();
        }
        if (!this.leftEffect.isFinished()) {
            needsInvalidate = drawLeft($this$drawOverscroll, this.leftEffect, canvas);
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.leftEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect), 0.0f);
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffectNegation) == 0.0f)) {
            drawBottom($this$drawOverscroll, this.topEffectNegation, canvas);
            this.topEffectNegation.finish();
        }
        if (!this.topEffect.isFinished()) {
            needsInvalidate = drawTop($this$drawOverscroll, this.topEffect, canvas) || needsInvalidate;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.topEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect), 0.0f);
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffectNegation) == 0.0f)) {
            drawLeft($this$drawOverscroll, this.rightEffectNegation, canvas);
            this.rightEffectNegation.finish();
        }
        if (!this.rightEffect.isFinished()) {
            needsInvalidate = drawRight($this$drawOverscroll, this.rightEffect, canvas) || needsInvalidate;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.rightEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect), 0.0f);
        }
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffectNegation) == 0.0f)) {
            drawTop($this$drawOverscroll, this.bottomEffectNegation, canvas);
            this.bottomEffectNegation.finish();
        }
        if (!this.bottomEffect.isFinished()) {
            if (!drawBottom($this$drawOverscroll, this.bottomEffect, canvas) && !needsInvalidate) {
                z = false;
            }
            needsInvalidate = z;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.bottomEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect), 0.0f);
        }
        if (needsInvalidate) {
            invalidateOverscroll();
        }
    }

    private final boolean drawLeft(DrawScope $this$drawLeft, EdgeEffect left, android.graphics.Canvas canvas) {
        int restore = canvas.save();
        canvas.rotate(270.0f);
        canvas.translate(-Size.m3588getHeightimpl(this.containerSize), $this$drawLeft.mo313toPx0680j_4(this.overscrollConfig.getDrawPadding().mo513calculateLeftPaddingu2uoSUM($this$drawLeft.getLayoutDirection())));
        boolean needsInvalidate = left.draw(canvas);
        canvas.restoreToCount(restore);
        return needsInvalidate;
    }

    private final boolean drawTop(DrawScope $this$drawTop, EdgeEffect top, android.graphics.Canvas canvas) {
        int restore = canvas.save();
        canvas.translate(0.0f, $this$drawTop.mo313toPx0680j_4(this.overscrollConfig.getDrawPadding().getTop()));
        boolean needsInvalidate = top.draw(canvas);
        canvas.restoreToCount(restore);
        return needsInvalidate;
    }

    private final boolean drawRight(DrawScope $this$drawRight, EdgeEffect right, android.graphics.Canvas canvas) {
        int restore = canvas.save();
        int width = MathKt.roundToInt(Size.m3591getWidthimpl(this.containerSize));
        float rightPadding = this.overscrollConfig.getDrawPadding().mo514calculateRightPaddingu2uoSUM($this$drawRight.getLayoutDirection());
        canvas.rotate(90.0f);
        canvas.translate(0.0f, (-width) + $this$drawRight.mo313toPx0680j_4(rightPadding));
        boolean needsInvalidate = right.draw(canvas);
        canvas.restoreToCount(restore);
        return needsInvalidate;
    }

    private final boolean drawBottom(DrawScope $this$drawBottom, EdgeEffect bottom, android.graphics.Canvas canvas) {
        int restore = canvas.save();
        canvas.rotate(180.0f);
        float bottomPadding = $this$drawBottom.mo313toPx0680j_4(this.overscrollConfig.getDrawPadding().getBottom());
        canvas.translate(-Size.m3591getWidthimpl(this.containerSize), (-Size.m3588getHeightimpl(this.containerSize)) + bottomPadding);
        boolean needsInvalidate = bottom.draw(canvas);
        canvas.restoreToCount(restore);
        return needsInvalidate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateOverscroll() {
        if (this.invalidationEnabled && this.consumeCount == getInvalidateCount()) {
            setInvalidateCount(getInvalidateCount() + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateToRelease() {
        boolean needsInvalidation = false;
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            EdgeEffect it = (EdgeEffect) item$iv;
            it.onRelease();
            needsInvalidation = it.isFinished() || needsInvalidation;
        }
        if (needsInvalidation) {
            invalidateOverscroll();
        }
    }

    /* JADX INFO: renamed from: releaseOppositeOverscroll-k-4lQ0M, reason: not valid java name */
    private final boolean m189releaseOppositeOverscrollk4lQ0M(long delta) {
        boolean needsInvalidation = false;
        if (!this.leftEffect.isFinished() && Offset.m3522getXimpl(delta) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.leftEffect, Offset.m3522getXimpl(delta));
            needsInvalidation = this.leftEffect.isFinished();
        }
        if (!this.rightEffect.isFinished() && Offset.m3522getXimpl(delta) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.rightEffect, Offset.m3522getXimpl(delta));
            needsInvalidation = needsInvalidation || this.rightEffect.isFinished();
        }
        if (!this.topEffect.isFinished() && Offset.m3523getYimpl(delta) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.topEffect, Offset.m3523getYimpl(delta));
            needsInvalidation = needsInvalidation || this.topEffect.isFinished();
        }
        if (!this.bottomEffect.isFinished() && Offset.m3523getYimpl(delta) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.bottomEffect, Offset.m3523getYimpl(delta));
            return needsInvalidation || this.bottomEffect.isFinished();
        }
        return needsInvalidation;
    }

    /* JADX INFO: renamed from: pullTop-0a9Yr6o, reason: not valid java name */
    private final float m188pullTop0a9Yr6o(long scroll, long displacement) {
        float displacementX = Offset.m3522getXimpl(displacement) / Size.m3591getWidthimpl(this.containerSize);
        float pullY = Offset.m3523getYimpl(scroll) / Size.m3588getHeightimpl(this.containerSize);
        float consumed = EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.topEffect, pullY, displacementX) * Size.m3588getHeightimpl(this.containerSize);
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) == 0.0f)) {
            return Offset.m3523getYimpl(scroll);
        }
        return consumed;
    }

    /* JADX INFO: renamed from: pullBottom-0a9Yr6o, reason: not valid java name */
    private final float m185pullBottom0a9Yr6o(long scroll, long displacement) {
        float displacementX = Offset.m3522getXimpl(displacement) / Size.m3591getWidthimpl(this.containerSize);
        float pullY = Offset.m3523getYimpl(scroll) / Size.m3588getHeightimpl(this.containerSize);
        float consumed = (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.bottomEffect, -pullY, 1 - displacementX)) * Size.m3588getHeightimpl(this.containerSize);
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f)) {
            return Offset.m3523getYimpl(scroll);
        }
        return consumed;
    }

    /* JADX INFO: renamed from: pullLeft-0a9Yr6o, reason: not valid java name */
    private final float m186pullLeft0a9Yr6o(long scroll, long displacement) {
        float displacementY = Offset.m3523getYimpl(displacement) / Size.m3588getHeightimpl(this.containerSize);
        float pullX = Offset.m3522getXimpl(scroll) / Size.m3591getWidthimpl(this.containerSize);
        float consumed = EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.leftEffect, pullX, 1 - displacementY) * Size.m3591getWidthimpl(this.containerSize);
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f)) {
            return Offset.m3522getXimpl(scroll);
        }
        return consumed;
    }

    /* JADX INFO: renamed from: pullRight-0a9Yr6o, reason: not valid java name */
    private final float m187pullRight0a9Yr6o(long scroll, long displacement) {
        float displacementY = Offset.m3523getYimpl(displacement) / Size.m3588getHeightimpl(this.containerSize);
        float pullX = Offset.m3522getXimpl(scroll) / Size.m3591getWidthimpl(this.containerSize);
        float consumed = (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.rightEffect, -pullX, displacementY)) * Size.m3591getWidthimpl(this.containerSize);
        if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) == 0.0f)) {
            return Offset.m3522getXimpl(scroll);
        }
        return consumed;
    }
}

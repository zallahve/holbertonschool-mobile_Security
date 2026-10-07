package androidx.compose.runtime;

import androidx.autofill.HintConstants;
import androidx.collection.MutableIntList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.MutatorMutex$$ExternalSyntheticBackportWithForwarding0;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.changelist.ChangeList;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Composition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002¥\u0001B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\b\u0010X\u001a\u00020\u001aH\u0016J\u0018\u0010Y\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020,2\u0006\u0010[\u001a\u00020\u0013H\u0002J\u001e\u0010Y\u001a\u00020\u001a2\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010[\u001a\u00020\u0013H\u0002J\b\u0010]\u001a\u00020\u001aH\u0016J\u0010\u0010^\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010_\u001a\u00020\u001aH\u0016J\b\u0010`\u001a\u00020\u001aH\u0016J\b\u0010a\u001a\u00020\u001aH\u0002J \u0010b\u001a\u00020\u001a2\u0011\u0010c\u001a\r\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0002\b\u001bH\u0016¢\u0006\u0002\u0010\u001fJ \u0010d\u001a\u00020\u001a2\u0011\u0010c\u001a\r\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0002\b\u001bH\u0002¢\u0006\u0002\u0010\u001fJ\r\u0010e\u001a\u00020:H\u0000¢\u0006\u0002\bfJ\b\u0010g\u001a\u00020\u001aH\u0016J3\u0010h\u001a\u0002Hi\"\u0004\b\u0000\u0010i2\b\u0010j\u001a\u0004\u0018\u00010\u00012\u0006\u0010k\u001a\u00020:2\f\u0010l\u001a\b\u0012\u0004\u0012\u0002Hi0\u0019H\u0016¢\u0006\u0002\u0010mJ\b\u0010n\u001a\u00020\u001aH\u0016J\u0010\u0010o\u001a\u00020\u001a2\u0006\u0010p\u001a\u00020qH\u0016J\b\u0010r\u001a\u00020\u001aH\u0002J\b\u0010s\u001a\u00020\u001aH\u0002J#\u0010t\u001a\u0004\u0018\u0001Hu\"\u0004\b\u0000\u0010u2\f\u0010v\u001a\b\u0012\u0004\u0012\u0002Hu0wH\u0016¢\u0006\u0002\u0010xJ\"\u0010y\u001a\u0002Hu\"\u0004\b\u0000\u0010u2\f\u0010l\u001a\b\u0012\u0004\u0012\u0002Hu0\u0019H\u0082\b¢\u0006\u0002\u0010zJC\u0010{\u001a\u0002Hu\"\u0004\b\u0000\u0010u2-\u0010l\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020,00¢\u0006\f\b}\u0012\b\b~\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u0002Hu0|H\u0082\b¢\u0006\u0002\u0010\u007fJ)\u0010\u0080\u0001\u001a\u00020\u001a2\u001e\u0010\u0081\u0001\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0005\u0012\u00030\u0083\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0083\u00010\u0082\u00010$H\u0016J\u001e\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020%2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010,H\u0016J\t\u0010\u0088\u0001\u001a\u00020\u001aH\u0016J(\u0010\u0089\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020%2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010,H\u0002J\u000f\u0010\u008c\u0001\u001a\u00020\u001a2\u0006\u0010v\u001a\u00020:J\u0011\u0010\u008d\u0001\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020,H\u0002J\u001a\u0010\u008e\u0001\u001a\u00030\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0000¢\u0006\u0003\b\u0092\u0001J\f\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0002J\u0017\u0010\u0093\u0001\u001a\u00020\u00132\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020,0+H\u0016J\u0017\u0010\u0094\u0001\u001a\u00020\u001a2\f\u0010l\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\t\u0010\u0095\u0001\u001a\u00020\u0013H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u001a2\u0007\u0010\u0086\u0001\u001a\u00020%H\u0016J\u0017\u0010\u0097\u0001\u001a\u00020\u001a2\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020,0+H\u0016J\u0011\u0010\u0098\u0001\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020,H\u0016J\u0011\u0010\u0099\u0001\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020,H\u0016J\u001b\u0010\u009a\u0001\u001a\u00020\u001a2\n\u0010p\u001a\u0006\u0012\u0002\b\u000301H\u0000¢\u0006\u0003\b\u009b\u0001J!\u0010\u009c\u0001\u001a\u00020\u001a2\u0007\u0010\u0087\u0001\u001a\u00020,2\u0007\u0010\u0086\u0001\u001a\u00020%H\u0000¢\u0006\u0003\b\u009d\u0001J!\u0010\u009e\u0001\u001a\u00020\u001a2\u0011\u0010c\u001a\r\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0002\b\u001bH\u0016¢\u0006\u0002\u0010\u001fJ!\u0010\u009f\u0001\u001a\u00020\u001a2\u0011\u0010c\u001a\r\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0002\b\u001bH\u0016¢\u0006\u0002\u0010\u001fJ\u0015\u0010 \u0001\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020,00H\u0002J#\u0010¡\u0001\u001a\u0002Hu\"\u0004\b\u0000\u0010u2\f\u0010l\u001a\b\u0012\u0004\u0012\u0002Hu0\u0019H\u0082\b¢\u0006\u0002\u0010zJ\u001d\u0010¢\u0001\u001a\u00020\u00132\u0007\u0010\u0086\u0001\u001a\u00020%2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010,H\u0002J\u0011\u0010£\u0001\u001a\u00020\u001a2\u0006\u0010S\u001a\u00020TH\u0002J\t\u0010¤\u0001\u001a\u00020\u001aH\u0016R\u0010\u0010\f\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0002\b\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020%0)X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001e\u0010/\u001a\u0012\u0012\u0004\u0012\u00020,\u0012\b\u0012\u0006\u0012\u0002\b\u00030100X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00103\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010\u0015R\u0014\u00105\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u0010\u0015R\u0014\u00107\u001a\b\u0012\u0004\u0012\u00020%0)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u00010\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010;\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020,00X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u0015R\u0014\u0010=\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010\u0015R\u0011\u0010>\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\u0015R\u000e\u0010?\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010A\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020%00X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010B\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020%00X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020,0+8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\bD\u0010.R\u0014\u0010E\u001a\u00020FX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010I\u001a\u00020\u0013X\u0080\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bJ\u0010\u0011\u001a\u0004\bK\u0010\u0015\"\u0004\bL\u0010MR\"\u0010N\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010,0Oj\n\u0012\u0006\u0012\u0004\u0018\u00010,`PX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u001a\u0010S\u001a\u00020TX\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bU\u0010\u0011\u001a\u0004\bV\u0010W¨\u0006¦\u0001"}, d2 = {"Landroidx/compose/runtime/CompositionImpl;", "Landroidx/compose/runtime/ControlledComposition;", "Landroidx/compose/runtime/ReusableComposition;", "Landroidx/compose/runtime/RecomposeScopeOwner;", "Landroidx/compose/runtime/CompositionServices;", "parent", "Landroidx/compose/runtime/CompositionContext;", "applier", "Landroidx/compose/runtime/Applier;", "recomposeContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V", "_recomposeContext", "abandonSet", "", "Landroidx/compose/runtime/RememberObserver;", "getAbandonSet$annotations", "()V", "areChildrenComposing", "", "getAreChildrenComposing", "()Z", "changes", "Landroidx/compose/runtime/changelist/ChangeList;", "composable", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "getComposable", "()Lkotlin/jvm/functions/Function2;", "setComposable", "(Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "composer", "Landroidx/compose/runtime/ComposerImpl;", "conditionalScopes", "", "Landroidx/compose/runtime/RecomposeScopeImpl;", "getConditionalScopes$runtime_release", "()Ljava/util/List;", "conditionallyInvalidatedScopes", "Landroidx/collection/MutableScatterSet;", "derivedStateDependencies", "", "", "getDerivedStateDependencies$runtime_release", "()Ljava/util/Set;", "derivedStates", "Landroidx/compose/runtime/collection/ScopeMap;", "Landroidx/compose/runtime/DerivedState;", "disposed", "hasInvalidations", "getHasInvalidations", "hasPendingChanges", "getHasPendingChanges", "invalidatedScopes", "invalidationDelegate", "invalidationDelegateGroup", "", "invalidations", "isComposing", "isDisposed", "isRoot", "lateChanges", "lock", "observations", "observationsProcessed", "observedObjects", "getObservedObjects$runtime_release", "observerHolder", "Landroidx/compose/runtime/CompositionObserverHolder;", "getObserverHolder$runtime_release", "()Landroidx/compose/runtime/CompositionObserverHolder;", "pendingInvalidScopes", "getPendingInvalidScopes$runtime_release$annotations", "getPendingInvalidScopes$runtime_release", "setPendingInvalidScopes$runtime_release", "(Z)V", "pendingModifications", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroidx/compose/runtime/AtomicReference;", "getRecomposeContext", "()Lkotlin/coroutines/CoroutineContext;", "slotTable", "Landroidx/compose/runtime/SlotTable;", "getSlotTable$runtime_release$annotations", "getSlotTable$runtime_release", "()Landroidx/compose/runtime/SlotTable;", "abandonChanges", "addPendingInvalidationsLocked", "value", "forgetConditionalScopes", "values", "applyChanges", "applyChangesInLocked", "applyLateChanges", "changesApplied", "cleanUpDerivedStateObservations", "composeContent", "content", "composeInitial", "composerStacksSizes", "composerStacksSizes$runtime_release", "deactivate", "delegateInvalidations", "R", "to", "groupIndex", "block", "(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "dispose", "disposeUnusedMovableContent", "state", "Landroidx/compose/runtime/MovableContentState;", "drainPendingModificationsForCompositionLocked", "drainPendingModificationsLocked", "getCompositionService", "T", "key", "Landroidx/compose/runtime/CompositionServiceKey;", "(Landroidx/compose/runtime/CompositionServiceKey;)Ljava/lang/Object;", "guardChanges", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "guardInvalidationsLocked", "Lkotlin/Function1;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "insertMovableContent", "references", "Lkotlin/Pair;", "Landroidx/compose/runtime/MovableContentStateReference;", "invalidate", "Landroidx/compose/runtime/InvalidationResult;", "scope", "instance", "invalidateAll", "invalidateChecked", "anchor", "Landroidx/compose/runtime/Anchor;", "invalidateGroupsWithKey", "invalidateScopeOfLocked", "observe", "Landroidx/compose/runtime/tooling/CompositionObserverHandle;", "observer", "Landroidx/compose/runtime/tooling/CompositionObserver;", "observe$runtime_release", "observesAnyOf", "prepareCompose", "recompose", "recomposeScopeReleased", "recordModificationsOf", "recordReadOf", "recordWriteOf", "removeDerivedStateObservation", "removeDerivedStateObservation$runtime_release", "removeObservation", "removeObservation$runtime_release", "setContent", "setContentWithReuse", "takeInvalidations", "trackAbandonedValues", "tryImminentInvalidation", "validateRecomposeScopeAnchors", "verifyConsistent", "RememberEventDispatcher", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CompositionImpl implements ControlledComposition, ReusableComposition, RecomposeScopeOwner, CompositionServices {
    public static final int $stable = 8;
    private final CoroutineContext _recomposeContext;
    private final Set<RememberObserver> abandonSet;
    private final Applier<?> applier;
    private final ChangeList changes;
    private Function2<? super Composer, ? super Integer, Unit> composable;
    private final ComposerImpl composer;
    private final MutableScatterSet<RecomposeScopeImpl> conditionallyInvalidatedScopes;
    private final ScopeMap<Object, DerivedState<?>> derivedStates;
    private boolean disposed;
    private final MutableScatterSet<RecomposeScopeImpl> invalidatedScopes;
    private CompositionImpl invalidationDelegate;
    private int invalidationDelegateGroup;
    private ScopeMap<RecomposeScopeImpl, Object> invalidations;
    private final boolean isRoot;
    private final ChangeList lateChanges;
    private final Object lock;
    private final ScopeMap<Object, RecomposeScopeImpl> observations;
    private final ScopeMap<Object, RecomposeScopeImpl> observationsProcessed;
    private final CompositionObserverHolder observerHolder;
    private final CompositionContext parent;
    private boolean pendingInvalidScopes;
    private final AtomicReference<Object> pendingModifications;
    private final SlotTable slotTable;

    private static /* synthetic */ void getAbandonSet$annotations() {
    }

    public static /* synthetic */ void getPendingInvalidScopes$runtime_release$annotations() {
    }

    public static /* synthetic */ void getSlotTable$runtime_release$annotations() {
    }

    public CompositionImpl(CompositionContext parent, Applier<?> applier, CoroutineContext recomposeContext) {
        this.parent = parent;
        this.applier = applier;
        this.pendingModifications = new AtomicReference<>(null);
        this.lock = new Object();
        this.abandonSet = new MutableScatterSet(0, 1, null).asMutableSet();
        SlotTable it = new SlotTable();
        if (this.parent.getCollectingCallByInformation$runtime_release()) {
            it.collectCalledByInformation();
        }
        if (this.parent.getCollectingSourceInformation()) {
            it.collectSourceInformation();
        }
        this.slotTable = it;
        this.observations = new ScopeMap<>();
        this.invalidatedScopes = new MutableScatterSet<>(0, 1, null);
        this.conditionallyInvalidatedScopes = new MutableScatterSet<>(0, 1, null);
        this.derivedStates = new ScopeMap<>();
        this.changes = new ChangeList();
        this.lateChanges = new ChangeList();
        this.observationsProcessed = new ScopeMap<>();
        this.invalidations = new ScopeMap<>();
        this.observerHolder = new CompositionObserverHolder(null, false, 3, null);
        ComposerImpl it2 = new ComposerImpl(this.applier, this.parent, this.slotTable, this.abandonSet, this.changes, this.lateChanges, this);
        this.parent.registerComposer$runtime_release(it2);
        this.composer = it2;
        this._recomposeContext = recomposeContext;
        this.isRoot = this.parent instanceof Recomposer;
        this.composable = ComposableSingletons$CompositionKt.INSTANCE.m3251getLambda1$runtime_release();
    }

    public /* synthetic */ CompositionImpl(CompositionContext compositionContext, Applier applier, CoroutineContext coroutineContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(compositionContext, applier, (i & 4) != 0 ? null : coroutineContext);
    }

    /* JADX INFO: renamed from: getSlotTable$runtime_release, reason: from getter */
    public final SlotTable getSlotTable() {
        return this.slotTable;
    }

    public final Set<Object> getObservedObjects$runtime_release() {
        return this.observations.getMap().asMap().keySet();
    }

    public final Set<Object> getDerivedStateDependencies$runtime_release() {
        return this.derivedStates.getMap().asMap().keySet();
    }

    public final List<RecomposeScopeImpl> getConditionalScopes$runtime_release() {
        return CollectionsKt.toList(this.conditionallyInvalidatedScopes.asSet());
    }

    /* JADX INFO: renamed from: getPendingInvalidScopes$runtime_release, reason: from getter */
    public final boolean getPendingInvalidScopes() {
        return this.pendingInvalidScopes;
    }

    public final void setPendingInvalidScopes$runtime_release(boolean z) {
        this.pendingInvalidScopes = z;
    }

    /* JADX INFO: renamed from: getObserverHolder$runtime_release, reason: from getter */
    public final CompositionObserverHolder getObserverHolder() {
        return this.observerHolder;
    }

    public final CoroutineContext getRecomposeContext() {
        CoroutineContext coroutineContext = this._recomposeContext;
        return coroutineContext == null ? this.parent.getRecomposeCoroutineContext$runtime_release() : coroutineContext;
    }

    /* JADX INFO: renamed from: isRoot, reason: from getter */
    public final boolean getIsRoot() {
        return this.isRoot;
    }

    private final boolean getAreChildrenComposing() {
        return this.composer.getAreChildrenComposing$runtime_release();
    }

    public final Function2<Composer, Integer, Unit> getComposable() {
        return this.composable;
    }

    public final void setComposable(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.composable = function2;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean isComposing() {
        return this.composer.getIsComposing();
    }

    @Override // androidx.compose.runtime.Composition
    /* JADX INFO: renamed from: isDisposed, reason: from getter */
    public boolean getDisposed() {
        return this.disposed;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean getHasPendingChanges() {
        boolean hasPendingChanges$runtime_release;
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            hasPendingChanges$runtime_release = this.composer.getHasPendingChanges$runtime_release();
        }
        return hasPendingChanges$runtime_release;
    }

    @Override // androidx.compose.runtime.Composition
    public void setContent(Function2<? super Composer, ? super Integer, Unit> content) {
        composeInitial(content);
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public void setContentWithReuse(Function2<? super Composer, ? super Integer, Unit> content) {
        this.composer.startReuseFromRoot();
        composeInitial(content);
        this.composer.endReuseFromRoot();
    }

    private final void composeInitial(Function2<? super Composer, ? super Integer, Unit> content) {
        boolean value$iv = !this.disposed;
        if (!value$iv) {
            PreconditionsKt.throwIllegalStateException("The composition is disposed");
        }
        this.composable = content;
        this.parent.composeInitial$runtime_release(this, this.composable);
    }

    public final CompositionObserverHandle observe$runtime_release(final CompositionObserver observer) {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            this.observerHolder.setObserver(observer);
            this.observerHolder.setRoot(true);
            Unit unit = Unit.INSTANCE;
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.CompositionImpl$observe$2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                Object lock$iv2 = this.this$0.lock;
                CompositionImpl compositionImpl = this.this$0;
                CompositionObserver compositionObserver = observer;
                synchronized (lock$iv2) {
                    if (Intrinsics.areEqual(compositionImpl.getObserverHolder().getObserver(), compositionObserver)) {
                        compositionImpl.getObserverHolder().setObserver(null);
                        compositionImpl.getObserverHolder().setRoot(false);
                    }
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invalidateGroupsWithKey(int r17) {
        /*
            r16 = this;
            r1 = r16
            java.lang.Object r2 = r1.lock
            r3 = 0
            monitor-enter(r2)
            r0 = 0
            androidx.compose.runtime.SlotTable r4 = r1.slotTable     // Catch: java.lang.Throwable -> L5d
            r5 = r17
            java.util.List r4 = r4.invalidateGroupsWithKey$runtime_release(r5)     // Catch: java.lang.Throwable -> L5b
            monitor-exit(r2)
            r0 = r4
            if (r0 == 0) goto L46
            r3 = r0
            r4 = 0
            r6 = r3
            r7 = 0
            r8 = 0
            int r9 = r6.size()
        L1e:
            if (r8 >= r9) goto L3f
            java.lang.Object r11 = r6.get(r8)
            r12 = r11
            r13 = 0
            r14 = r12
            androidx.compose.runtime.RecomposeScopeImpl r14 = (androidx.compose.runtime.RecomposeScopeImpl) r14
            r15 = 0
            r2 = 0
            androidx.compose.runtime.InvalidationResult r2 = r14.invalidateForResult(r2)
            androidx.compose.runtime.InvalidationResult r10 = androidx.compose.runtime.InvalidationResult.IGNORED
            if (r2 != r10) goto L35
            r2 = 1
            goto L36
        L35:
            r2 = 0
        L36:
            if (r2 == 0) goto L3a
            r2 = 1
            goto L41
        L3a:
            int r8 = r8 + 1
            goto L1e
        L3f:
            r2 = 0
        L41:
            if (r2 == 0) goto L44
            goto L46
        L44:
            r2 = 0
            goto L47
        L46:
            r2 = 1
        L47:
            if (r2 == 0) goto L5a
            androidx.compose.runtime.ComposerImpl r3 = r1.composer
            boolean r3 = r3.forceRecomposeScopes$runtime_release()
            if (r3 == 0) goto L5a
            androidx.compose.runtime.CompositionContext r3 = r1.parent
            r4 = r1
            androidx.compose.runtime.ControlledComposition r4 = (androidx.compose.runtime.ControlledComposition) r4
            r3.invalidate$runtime_release(r4)
        L5a:
            return
        L5b:
            r0 = move-exception
            goto L60
        L5d:
            r0 = move-exception
            r5 = r17
        L60:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.invalidateGroupsWithKey(int):void");
    }

    private final void drainPendingModificationsForCompositionLocked() {
        Object toRecord = this.pendingModifications.getAndSet(CompositionKt.PendingApplyNoModifications);
        if (toRecord != null) {
            if (Intrinsics.areEqual(toRecord, CompositionKt.PendingApplyNoModifications)) {
                ComposerKt.composeRuntimeError("pending composition has not been applied");
                throw new KotlinNothingValueException();
            }
            if (toRecord instanceof Set) {
                addPendingInvalidationsLocked((Set<? extends Object>) toRecord, true);
                return;
            }
            if (!(toRecord instanceof Object[])) {
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                throw new KotlinNothingValueException();
            }
            for (Set<? extends Object> set : (Set[]) toRecord) {
                addPendingInvalidationsLocked(set, true);
            }
        }
    }

    private final void drainPendingModificationsLocked() {
        Object toRecord = this.pendingModifications.getAndSet(null);
        if (!Intrinsics.areEqual(toRecord, CompositionKt.PendingApplyNoModifications)) {
            if (toRecord instanceof Set) {
                addPendingInvalidationsLocked((Set<? extends Object>) toRecord, false);
                return;
            }
            if (!(toRecord instanceof Object[])) {
                if (toRecord == null) {
                    ComposerKt.composeRuntimeError("calling recordModificationsOf and applyChanges concurrently is not supported");
                    throw new KotlinNothingValueException();
                }
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                throw new KotlinNothingValueException();
            }
            for (Set<? extends Object> set : (Set[]) toRecord) {
                addPendingInvalidationsLocked(set, false);
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void composeContent(Function2<? super Composer, ? super Integer, Unit> content) throws Exception {
        CompositionObserver observer;
        Unit unit;
        CompositionImpl compositionImpl;
        try {
            Object lock$iv = this.lock;
            synchronized (lock$iv) {
                try {
                    try {
                        drainPendingModificationsForCompositionLocked();
                        ScopeMap<RecomposeScopeImpl, Object> scopeMapTakeInvalidations = takeInvalidations();
                        try {
                            try {
                                observer = observer();
                                if (observer != null) {
                                    try {
                                        compositionImpl = this;
                                    } catch (Exception e) {
                                        e$iv = e;
                                    } catch (Throwable th) {
                                        e$iv = th;
                                    }
                                    try {
                                        Map<RecomposeScopeImpl, Set<Object>> mapAsMap = scopeMapTakeInvalidations.asMap();
                                        try {
                                            Intrinsics.checkNotNull(mapAsMap, "null cannot be cast to non-null type kotlin.collections.Map<androidx.compose.runtime.RecomposeScope, kotlin.collections.Set<kotlin.Any>?>");
                                            observer.onBeginComposition(compositionImpl, mapAsMap);
                                        } catch (Exception e2) {
                                            e$iv = e2;
                                            this.invalidations = scopeMapTakeInvalidations;
                                            throw e$iv;
                                        } catch (Throwable th2) {
                                            e$iv = th2;
                                            throw e$iv;
                                        }
                                    } catch (Exception e3) {
                                        e$iv = e3;
                                        this.invalidations = scopeMapTakeInvalidations;
                                        throw e$iv;
                                    } catch (Throwable th3) {
                                        e$iv = th3;
                                        throw e$iv;
                                    }
                                }
                            } catch (Exception e4) {
                                e$iv = e4;
                            }
                            try {
                                this.composer.composeContent$runtime_release(scopeMapTakeInvalidations, content);
                                if (observer != null) {
                                    observer.onEndComposition(this);
                                    unit = Unit.INSTANCE;
                                } else {
                                    unit = null;
                                }
                            } catch (Exception e5) {
                                e$iv = e5;
                                this.invalidations = scopeMapTakeInvalidations;
                                throw e$iv;
                            }
                        } catch (Throwable th4) {
                            e$iv = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (0 == 0) {
                            try {
                                if (!this.abandonSet.isEmpty()) {
                                    new RememberEventDispatcher(this.abandonSet).dispatchAbandons();
                                }
                            } catch (Exception e$iv) {
                                abandonChanges();
                                throw e$iv;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    e$iv = th6;
                }
            }
        } catch (Throwable th7) {
            th = th7;
        }
    }

    @Override // androidx.compose.runtime.Composition
    public void dispose() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            boolean nonEmptySlotTable = true;
            boolean value$iv = !this.composer.getIsComposing();
            if (!value$iv) {
                PreconditionsKt.throwIllegalStateException("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
            }
            boolean value$iv2 = this.disposed;
            if (!value$iv2) {
                this.disposed = true;
                this.composable = ComposableSingletons$CompositionKt.INSTANCE.m3252getLambda2$runtime_release();
                ChangeList deferredChanges = this.composer.getDeferredChanges();
                if (deferredChanges != null) {
                    applyChangesInLocked(deferredChanges);
                }
                if (this.slotTable.getGroupsSize() <= 0) {
                    nonEmptySlotTable = false;
                }
                if (nonEmptySlotTable || !this.abandonSet.isEmpty()) {
                    RememberEventDispatcher manager = new RememberEventDispatcher(this.abandonSet);
                    if (nonEmptySlotTable) {
                        this.applier.onBeginChanges();
                        SlotTable this_$iv = this.slotTable;
                        SlotWriter writer$iv = this_$iv.openWriter();
                        try {
                            ComposerKt.removeCurrentGroup(writer$iv, manager);
                            Unit unit = Unit.INSTANCE;
                            writer$iv.close(true);
                            this.applier.clear();
                            this.applier.onEndChanges();
                            manager.dispatchRememberObservers();
                        } catch (Throwable th) {
                            writer$iv.close(false);
                            throw th;
                        }
                    }
                    manager.dispatchAbandons();
                }
                this.composer.dispose$runtime_release();
            }
            Unit unit2 = Unit.INSTANCE;
        }
        this.parent.unregisterComposition$runtime_release(this);
    }

    @Override // androidx.compose.runtime.Composition
    public boolean getHasInvalidations() {
        boolean z;
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            z = this.invalidations.getSize() > 0;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.ControlledComposition
    public void recordModificationsOf(Set<? extends Object> values) {
        Object obj;
        boolean zAreEqual;
        Object objPlus;
        do {
            obj = this.pendingModifications.get();
            if (obj != null) {
                zAreEqual = Intrinsics.areEqual(obj, CompositionKt.PendingApplyNoModifications);
            } else {
                zAreEqual = true;
            }
            if (zAreEqual) {
                objPlus = values;
            } else if (obj instanceof Set) {
                objPlus = new Set[]{obj, values};
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.pendingModifications).toString());
                }
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>");
                objPlus = ArraysKt.plus((Set<? extends Object>[]) obj, values);
            }
        } while (!MutatorMutex$$ExternalSyntheticBackportWithForwarding0.m(this.pendingModifications, obj, objPlus));
        if (obj == null) {
            synchronized (this.lock) {
                drainPendingModificationsLocked();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean observesAnyOf(Set<? extends Object> values) {
        int $i$f$fastForEach = 0;
        if (!(values instanceof ScatterSetWrapper)) {
            Set<? extends Object> $this$forEach$iv$iv = values;
            for (Object element$iv$iv : $this$forEach$iv$iv) {
                if (this.observations.contains(element$iv$iv) || this.derivedStates.contains(element$iv$iv)) {
                    return true;
                }
            }
            return false;
        }
        ScatterSet this_$iv$iv = ((ScatterSetWrapper) values).getSet$runtime_release();
        Object[] k$iv$iv = this_$iv$iv.elements;
        long[] m$iv$iv$iv = this_$iv$iv.metadata;
        int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
        int i$iv$iv$iv = 0;
        if (0 > lastIndex$iv$iv$iv) {
            return false;
        }
        while (true) {
            long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
            int $i$f$fastForEach2 = $i$f$fastForEach;
            ScatterSet this_$iv$iv2 = this_$iv$iv;
            if ((((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                int i = 8;
                int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                for (int j$iv$iv$iv = 0; j$iv$iv$iv < bitCount$iv$iv$iv; j$iv$iv$iv++) {
                    long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                    int $i$f$isFull = value$iv$iv$iv$iv < 128 ? 1 : 0;
                    if ($i$f$isFull != 0) {
                        int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                        Object value = k$iv$iv[index$iv$iv$iv];
                        if (this.observations.contains(value) || this.derivedStates.contains(value)) {
                            return true;
                        }
                    }
                    i = 8;
                    slot$iv$iv$iv >>= 8;
                }
                if (bitCount$iv$iv$iv != i) {
                    return false;
                }
            }
            if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                return false;
            }
            i$iv$iv$iv++;
            $i$f$fastForEach = $i$f$fastForEach2;
            this_$iv$iv = this_$iv$iv2;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void prepareCompose(Function0<Unit> block) {
        this.composer.prepareCompose$runtime_release(block);
    }

    private final void addPendingInvalidationsLocked(Object value, boolean forgetConditionalScopes) {
        Object[] k$iv$iv;
        Object[] k$iv$iv2;
        ScopeMap<Object, RecomposeScopeImpl> scopeMap = this.observations;
        int $i$f$forEachScopeOf = 0;
        Object value$iv = scopeMap.getMap().get(value);
        if (value$iv == null) {
            return;
        }
        if (!(value$iv instanceof MutableScatterSet)) {
            RecomposeScopeImpl scope = (RecomposeScopeImpl) value$iv;
            if (!this.observationsProcessed.remove(value, scope) && scope.invalidateForResult(value) != InvalidationResult.IGNORED) {
                if (scope.isConditional() && !forgetConditionalScopes) {
                    this.conditionallyInvalidatedScopes.add(scope);
                    return;
                } else {
                    this.invalidatedScopes.add(scope);
                    return;
                }
            }
            return;
        }
        ScatterSet this_$iv$iv = (MutableScatterSet) value$iv;
        int $i$f$forEach = 0;
        Object[] k$iv$iv3 = this_$iv$iv.elements;
        long[] m$iv$iv$iv = this_$iv$iv.metadata;
        int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
        int i$iv$iv$iv = 0;
        if (0 > lastIndex$iv$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
            ScopeMap<Object, RecomposeScopeImpl> scopeMap2 = scopeMap;
            int $i$f$forEachScopeOf2 = $i$f$forEachScopeOf;
            ScatterSet this_$iv$iv2 = this_$iv$iv;
            int $i$f$forEach2 = $i$f$forEach;
            long $this$maskEmptyOrDeleted$iv$iv$iv$iv = ((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv$iv == -9187201950435737472L) {
                k$iv$iv = k$iv$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                int j$iv$iv$iv = 0;
                while (j$iv$iv$iv < bitCount$iv$iv$iv) {
                    long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                    if (!(value$iv$iv$iv$iv < 128)) {
                        k$iv$iv2 = k$iv$iv3;
                    } else {
                        int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                        RecomposeScopeImpl scope2 = (RecomposeScopeImpl) k$iv$iv3[index$iv$iv$iv];
                        if (this.observationsProcessed.remove(value, scope2)) {
                            k$iv$iv2 = k$iv$iv3;
                        } else {
                            k$iv$iv2 = k$iv$iv3;
                            if (scope2.invalidateForResult(value) != InvalidationResult.IGNORED) {
                                if (scope2.isConditional() && !forgetConditionalScopes) {
                                    this.conditionallyInvalidatedScopes.add(scope2);
                                } else {
                                    this.invalidatedScopes.add(scope2);
                                }
                            }
                        }
                    }
                    i = 8;
                    slot$iv$iv$iv >>= 8;
                    j$iv$iv$iv++;
                    k$iv$iv3 = k$iv$iv2;
                }
                k$iv$iv = k$iv$iv3;
                if (bitCount$iv$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                return;
            }
            i$iv$iv$iv++;
            this_$iv$iv = this_$iv$iv2;
            $i$f$forEach = $i$f$forEach2;
            scopeMap = scopeMap2;
            $i$f$forEachScopeOf = $i$f$forEachScopeOf2;
            k$iv$iv3 = k$iv$iv;
        }
    }

    private final void addPendingInvalidationsLocked(Set<? extends Object> values, boolean forgetConditionalScopes) {
        Set $this$fastForEach$iv;
        Iterable $this$forEach$iv$iv;
        int $i$f$forEach;
        Iterator it;
        long[] m$iv$iv$iv;
        long[] m$iv$iv$iv2;
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet;
        int $i$f$removeScopeIf;
        int $i$f$forEachIndexed;
        long[] m$iv$iv$iv3;
        int lastIndex$iv$iv$iv;
        int $i$f$removeIf;
        int bitCount$iv$iv$iv;
        int j$iv$iv$iv;
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet2;
        int $i$f$removeScopeIf2;
        int $i$f$forEachIndexed2;
        long[] m$iv$iv$iv4;
        int lastIndex$iv$iv$iv2;
        int $i$f$removeIf2;
        boolean zContains;
        String str;
        int $i$f$forEachIndexed3;
        long[] m$iv$iv$iv5;
        int lastIndex$iv$iv$iv3;
        int i$iv$iv$iv;
        String str2;
        int bitCount$iv$iv$iv2;
        int j$iv$iv$iv2;
        int $i$f$forEachIndexed4;
        long[] m$iv$iv$iv6;
        int lastIndex$iv$iv$iv4;
        int i$iv$iv$iv2;
        long slot$iv$iv$iv;
        boolean zIsEmpty;
        long[] m$iv$iv$iv7;
        long[] m$iv$iv$iv8;
        int $i$f$fastForEach;
        ScatterSet this_$iv$iv;
        long[] m$iv$iv$iv9;
        int lastIndex$iv$iv$iv5;
        int i$iv$iv$iv3;
        Object[] k$iv$iv;
        int $i$f$fastForEach2;
        ScatterSet this_$iv$iv2;
        long[] m$iv$iv$iv10;
        int lastIndex$iv$iv$iv6;
        int i$iv$iv$iv4;
        Object[] k$iv$iv2;
        Object[] k$iv$iv3;
        Object[] k$iv$iv4;
        Set $this$fastForEach$iv2 = values;
        int $i$f$fastForEach3 = 0;
        char c = 7;
        long j = -9187201950435737472L;
        if ($this$fastForEach$iv2 instanceof ScatterSetWrapper) {
            ScatterSet this_$iv$iv3 = ((ScatterSetWrapper) $this$fastForEach$iv2).getSet$runtime_release();
            Object[] k$iv$iv5 = this_$iv$iv3.elements;
            ScatterSet this_$iv$iv$iv = this_$iv$iv3;
            long[] m$iv$iv$iv11 = this_$iv$iv$iv.metadata;
            int lastIndex$iv$iv$iv7 = m$iv$iv$iv11.length - 2;
            int i$iv$iv$iv5 = 0;
            if (0 <= lastIndex$iv$iv$iv7) {
                while (true) {
                    long slot$iv$iv$iv2 = m$iv$iv$iv11[i$iv$iv$iv5];
                    ScatterSet this_$iv$iv$iv2 = this_$iv$iv$iv;
                    long $this$maskEmptyOrDeleted$iv$iv$iv$iv = ((~slot$iv$iv$iv2) << c) & slot$iv$iv$iv2 & j;
                    if ($this$maskEmptyOrDeleted$iv$iv$iv$iv != j) {
                        int bitCount$iv$iv$iv3 = 8 - ((~(i$iv$iv$iv5 - lastIndex$iv$iv$iv7)) >>> 31);
                        int j$iv$iv$iv3 = 0;
                        while (j$iv$iv$iv3 < bitCount$iv$iv$iv3) {
                            long value$iv$iv$iv$iv = slot$iv$iv$iv2 & 255;
                            int $i$f$isFull = value$iv$iv$iv$iv < 128 ? 1 : 0;
                            if ($i$f$isFull != 0) {
                                Object value = k$iv$iv5[(i$iv$iv$iv5 << 3) + j$iv$iv$iv3];
                                if (value instanceof RecomposeScopeImpl) {
                                    $i$f$fastForEach2 = $i$f$fastForEach3;
                                    ((RecomposeScopeImpl) value).invalidateForResult(null);
                                    this_$iv$iv2 = this_$iv$iv3;
                                    m$iv$iv$iv10 = m$iv$iv$iv11;
                                    lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                    i$iv$iv$iv4 = i$iv$iv$iv5;
                                    k$iv$iv2 = k$iv$iv5;
                                } else {
                                    $i$f$fastForEach2 = $i$f$fastForEach3;
                                    addPendingInvalidationsLocked(value, forgetConditionalScopes);
                                    this_$iv$iv2 = this_$iv$iv3;
                                    Object value$iv = this.derivedStates.getMap().get(value);
                                    if (value$iv == null) {
                                        m$iv$iv$iv10 = m$iv$iv$iv11;
                                        lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                        i$iv$iv$iv4 = i$iv$iv$iv5;
                                        k$iv$iv2 = k$iv$iv5;
                                    } else if (value$iv instanceof MutableScatterSet) {
                                        ScatterSet this_$iv$iv4 = (MutableScatterSet) value$iv;
                                        m$iv$iv$iv10 = m$iv$iv$iv11;
                                        Object[] k$iv$iv6 = this_$iv$iv4.elements;
                                        long[] m$iv$iv$iv12 = this_$iv$iv4.metadata;
                                        int lastIndex$iv$iv$iv8 = m$iv$iv$iv12.length - 2;
                                        int i$iv$iv$iv6 = 0;
                                        if (0 <= lastIndex$iv$iv$iv8) {
                                            while (true) {
                                                long slot$iv$iv$iv3 = m$iv$iv$iv12[i$iv$iv$iv6];
                                                k$iv$iv2 = k$iv$iv5;
                                                Object value2 = value;
                                                lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                                i$iv$iv$iv4 = i$iv$iv$iv5;
                                                if ((((~slot$iv$iv$iv3) << 7) & slot$iv$iv$iv3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int bitCount$iv$iv$iv4 = 8 - ((~(i$iv$iv$iv6 - lastIndex$iv$iv$iv8)) >>> 31);
                                                    int j$iv$iv$iv4 = 0;
                                                    while (j$iv$iv$iv4 < bitCount$iv$iv$iv4) {
                                                        long value$iv$iv$iv$iv2 = slot$iv$iv$iv3 & 255;
                                                        int $i$f$isFull2 = value$iv$iv$iv$iv2 < 128 ? 1 : 0;
                                                        if ($i$f$isFull2 != 0) {
                                                            k$iv$iv4 = k$iv$iv6;
                                                            DerivedState it2 = (DerivedState) k$iv$iv6[(i$iv$iv$iv6 << 3) + j$iv$iv$iv4];
                                                            addPendingInvalidationsLocked(it2, forgetConditionalScopes);
                                                        } else {
                                                            k$iv$iv4 = k$iv$iv6;
                                                        }
                                                        slot$iv$iv$iv3 >>= 8;
                                                        j$iv$iv$iv4++;
                                                        k$iv$iv6 = k$iv$iv4;
                                                    }
                                                    k$iv$iv3 = k$iv$iv6;
                                                    if (bitCount$iv$iv$iv4 == 8) {
                                                        break;
                                                    }
                                                } else {
                                                    k$iv$iv3 = k$iv$iv6;
                                                }
                                                if (i$iv$iv$iv6 != lastIndex$iv$iv$iv8) {
                                                    i$iv$iv$iv6++;
                                                    lastIndex$iv$iv$iv7 = lastIndex$iv$iv$iv6;
                                                    i$iv$iv$iv5 = i$iv$iv$iv4;
                                                    k$iv$iv5 = k$iv$iv2;
                                                    value = value2;
                                                    k$iv$iv6 = k$iv$iv3;
                                                }
                                            }
                                        } else {
                                            lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                            i$iv$iv$iv4 = i$iv$iv$iv5;
                                            k$iv$iv2 = k$iv$iv5;
                                        }
                                    } else {
                                        m$iv$iv$iv10 = m$iv$iv$iv11;
                                        lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                        i$iv$iv$iv4 = i$iv$iv$iv5;
                                        k$iv$iv2 = k$iv$iv5;
                                        DerivedState it3 = (DerivedState) value$iv;
                                        addPendingInvalidationsLocked(it3, forgetConditionalScopes);
                                    }
                                }
                            } else {
                                $i$f$fastForEach2 = $i$f$fastForEach3;
                                this_$iv$iv2 = this_$iv$iv3;
                                m$iv$iv$iv10 = m$iv$iv$iv11;
                                lastIndex$iv$iv$iv6 = lastIndex$iv$iv$iv7;
                                i$iv$iv$iv4 = i$iv$iv$iv5;
                                k$iv$iv2 = k$iv$iv5;
                            }
                            slot$iv$iv$iv2 >>= 8;
                            j$iv$iv$iv3++;
                            $i$f$fastForEach3 = $i$f$fastForEach2;
                            this_$iv$iv3 = this_$iv$iv2;
                            m$iv$iv$iv11 = m$iv$iv$iv10;
                            lastIndex$iv$iv$iv7 = lastIndex$iv$iv$iv6;
                            i$iv$iv$iv5 = i$iv$iv$iv4;
                            k$iv$iv5 = k$iv$iv2;
                        }
                        $i$f$fastForEach = $i$f$fastForEach3;
                        this_$iv$iv = this_$iv$iv3;
                        m$iv$iv$iv9 = m$iv$iv$iv11;
                        lastIndex$iv$iv$iv5 = lastIndex$iv$iv$iv7;
                        i$iv$iv$iv3 = i$iv$iv$iv5;
                        k$iv$iv = k$iv$iv5;
                        if (bitCount$iv$iv$iv3 != 8) {
                            break;
                        }
                    } else {
                        $i$f$fastForEach = $i$f$fastForEach3;
                        this_$iv$iv = this_$iv$iv3;
                        m$iv$iv$iv9 = m$iv$iv$iv11;
                        lastIndex$iv$iv$iv5 = lastIndex$iv$iv$iv7;
                        i$iv$iv$iv3 = i$iv$iv$iv5;
                        k$iv$iv = k$iv$iv5;
                    }
                    lastIndex$iv$iv$iv7 = lastIndex$iv$iv$iv5;
                    int i$iv$iv$iv7 = i$iv$iv$iv3;
                    if (i$iv$iv$iv7 == lastIndex$iv$iv$iv7) {
                        break;
                    }
                    i$iv$iv$iv5 = i$iv$iv$iv7 + 1;
                    this_$iv$iv$iv = this_$iv$iv$iv2;
                    $i$f$fastForEach3 = $i$f$fastForEach;
                    this_$iv$iv3 = this_$iv$iv;
                    m$iv$iv$iv11 = m$iv$iv$iv9;
                    k$iv$iv5 = k$iv$iv;
                    c = 7;
                    j = -9187201950435737472L;
                }
            }
        } else {
            Set $this$forEach$iv$iv2 = $this$fastForEach$iv2;
            int $i$f$forEach2 = 0;
            Iterator it4 = $this$forEach$iv$iv2.iterator();
            while (it4.hasNext()) {
                Object element$iv$iv = it4.next();
                Object value3 = element$iv$iv;
                int i = 0;
                if (value3 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) value3).invalidateForResult(null);
                    $this$fastForEach$iv = $this$fastForEach$iv2;
                    $this$forEach$iv$iv = $this$forEach$iv$iv2;
                    $i$f$forEach = $i$f$forEach2;
                    it = it4;
                } else {
                    addPendingInvalidationsLocked(value3, forgetConditionalScopes);
                    Object value$iv2 = this.derivedStates.getMap().get(value3);
                    if (value$iv2 == null) {
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                        $this$forEach$iv$iv = $this$forEach$iv$iv2;
                        $i$f$forEach = $i$f$forEach2;
                        it = it4;
                    } else if (value$iv2 instanceof MutableScatterSet) {
                        ScatterSet this_$iv$iv5 = (MutableScatterSet) value$iv2;
                        Object[] k$iv$iv7 = this_$iv$iv5.elements;
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                        long[] m$iv$iv$iv13 = this_$iv$iv5.metadata;
                        $this$forEach$iv$iv = $this$forEach$iv$iv2;
                        int lastIndex$iv$iv$iv9 = m$iv$iv$iv13.length - 2;
                        $i$f$forEach = $i$f$forEach2;
                        int i$iv$iv$iv8 = 0;
                        if (0 <= lastIndex$iv$iv$iv9) {
                            while (true) {
                                long slot$iv$iv$iv4 = m$iv$iv$iv13[i$iv$iv$iv8];
                                it = it4;
                                Object element$iv$iv2 = element$iv$iv;
                                Object value4 = value3;
                                int i2 = i;
                                long $this$maskEmptyOrDeleted$iv$iv$iv$iv2 = ((~slot$iv$iv$iv4) << 7) & slot$iv$iv$iv4 & (-9187201950435737472L);
                                if ($this$maskEmptyOrDeleted$iv$iv$iv$iv2 != -9187201950435737472L) {
                                    int bitCount$iv$iv$iv5 = 8 - ((~(i$iv$iv$iv8 - lastIndex$iv$iv$iv9)) >>> 31);
                                    int j$iv$iv$iv5 = 0;
                                    while (j$iv$iv$iv5 < bitCount$iv$iv$iv5) {
                                        long value$iv$iv$iv$iv3 = slot$iv$iv$iv4 & 255;
                                        int $i$f$isFull3 = value$iv$iv$iv$iv3 < 128 ? 1 : 0;
                                        if ($i$f$isFull3 != 0) {
                                            m$iv$iv$iv2 = m$iv$iv$iv13;
                                            DerivedState it5 = (DerivedState) k$iv$iv7[(i$iv$iv$iv8 << 3) + j$iv$iv$iv5];
                                            addPendingInvalidationsLocked(it5, forgetConditionalScopes);
                                        } else {
                                            m$iv$iv$iv2 = m$iv$iv$iv13;
                                        }
                                        slot$iv$iv$iv4 >>= 8;
                                        j$iv$iv$iv5++;
                                        m$iv$iv$iv13 = m$iv$iv$iv2;
                                    }
                                    m$iv$iv$iv = m$iv$iv$iv13;
                                    if (bitCount$iv$iv$iv5 == 8) {
                                        break;
                                    }
                                } else {
                                    m$iv$iv$iv = m$iv$iv$iv13;
                                }
                                if (i$iv$iv$iv8 != lastIndex$iv$iv$iv9) {
                                    i$iv$iv$iv8++;
                                    value3 = value4;
                                    i = i2;
                                    it4 = it;
                                    element$iv$iv = element$iv$iv2;
                                    m$iv$iv$iv13 = m$iv$iv$iv;
                                }
                            }
                        } else {
                            it = it4;
                        }
                    } else {
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                        $this$forEach$iv$iv = $this$forEach$iv$iv2;
                        $i$f$forEach = $i$f$forEach2;
                        it = it4;
                        DerivedState it6 = (DerivedState) value$iv2;
                        addPendingInvalidationsLocked(it6, forgetConditionalScopes);
                    }
                }
                $this$fastForEach$iv2 = $this$fastForEach$iv;
                $this$forEach$iv$iv2 = $this$forEach$iv$iv;
                $i$f$forEach2 = $i$f$forEach;
                it4 = it;
            }
        }
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet3 = this.conditionallyInvalidatedScopes;
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet4 = this.invalidatedScopes;
        String str3 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>";
        if (!forgetConditionalScopes || !mutableScatterSet3.isNotEmpty()) {
            if (mutableScatterSet4.isNotEmpty()) {
                ScopeMap<Object, RecomposeScopeImpl> scopeMap = this.observations;
                int $i$f$removeScopeIf3 = 0;
                MutableScatterMap<Object, Object> map = scopeMap.getMap();
                int $i$f$removeIf3 = 0;
                MutableScatterMap<Object, Object> this_$iv$iv$iv3 = map;
                int $i$f$forEachIndexed5 = 0;
                long[] m$iv$iv$iv14 = this_$iv$iv$iv3.metadata;
                int lastIndex$iv$iv$iv10 = m$iv$iv$iv14.length - 2;
                int i$iv$iv$iv9 = 0;
                if (0 <= lastIndex$iv$iv$iv10) {
                    while (true) {
                        long slot$iv$iv$iv5 = m$iv$iv$iv14[i$iv$iv$iv9];
                        ScopeMap<Object, RecomposeScopeImpl> scopeMap2 = scopeMap;
                        int $i$f$removeIf4 = $i$f$removeIf3;
                        ScatterMap this_$iv$iv$iv4 = this_$iv$iv$iv3;
                        long $this$maskEmptyOrDeleted$iv$iv$iv$iv3 = ((~slot$iv$iv$iv5) << 7) & slot$iv$iv$iv5 & (-9187201950435737472L);
                        if ($this$maskEmptyOrDeleted$iv$iv$iv$iv3 != -9187201950435737472L) {
                            int bitCount$iv$iv$iv6 = 8 - ((~(i$iv$iv$iv9 - lastIndex$iv$iv$iv10)) >>> 31);
                            int j$iv$iv$iv6 = 0;
                            while (j$iv$iv$iv6 < bitCount$iv$iv$iv6) {
                                long value$iv$iv$iv$iv4 = slot$iv$iv$iv5 & 255;
                                int $i$f$isFull4 = value$iv$iv$iv$iv4 < 128 ? 1 : 0;
                                if ($i$f$isFull4 != 0) {
                                    int index$iv$iv$iv = (i$iv$iv$iv9 << 3) + j$iv$iv$iv6;
                                    mutableScatterSet2 = mutableScatterSet3;
                                    Object obj = map.keys[index$iv$iv$iv];
                                    Object value$iv3 = map.values[index$iv$iv$iv];
                                    $i$f$removeScopeIf2 = $i$f$removeScopeIf3;
                                    if (value$iv3 instanceof MutableScatterSet) {
                                        Intrinsics.checkNotNull(value$iv3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                        MutableScatterSet set$iv = (MutableScatterSet) value$iv3;
                                        Object[] elements$iv$iv = set$iv.elements;
                                        $i$f$forEachIndexed2 = $i$f$forEachIndexed5;
                                        m$iv$iv$iv4 = m$iv$iv$iv14;
                                        long[] m$iv$iv$iv15 = set$iv.metadata;
                                        int lastIndex$iv$iv$iv11 = m$iv$iv$iv15.length - 2;
                                        $i$f$removeIf2 = $i$f$removeIf4;
                                        int i$iv$iv$iv10 = 0;
                                        if (0 <= lastIndex$iv$iv$iv11) {
                                            while (true) {
                                                long slot$iv$iv$iv6 = m$iv$iv$iv15[i$iv$iv$iv10];
                                                long[] m$iv$iv$iv16 = m$iv$iv$iv15;
                                                lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv10;
                                                bitCount$iv$iv$iv = bitCount$iv$iv$iv6;
                                                j$iv$iv$iv = j$iv$iv$iv6;
                                                if ((((~slot$iv$iv$iv6) << 7) & slot$iv$iv$iv6 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int bitCount$iv$iv$iv7 = 8 - ((~(i$iv$iv$iv10 - lastIndex$iv$iv$iv11)) >>> 31);
                                                    for (int j$iv$iv$iv7 = 0; j$iv$iv$iv7 < bitCount$iv$iv$iv7; j$iv$iv$iv7++) {
                                                        long value$iv$iv$iv$iv5 = slot$iv$iv$iv6 & 255;
                                                        if (value$iv$iv$iv$iv5 < 128) {
                                                            int index$iv$iv$iv2 = (i$iv$iv$iv10 << 3) + j$iv$iv$iv7;
                                                            RecomposeScopeImpl scope = (RecomposeScopeImpl) elements$iv$iv[index$iv$iv$iv2];
                                                            if (mutableScatterSet4.contains(scope)) {
                                                                set$iv.removeElementAt(index$iv$iv$iv2);
                                                            }
                                                        }
                                                        slot$iv$iv$iv6 >>= 8;
                                                    }
                                                    if (bitCount$iv$iv$iv7 != 8) {
                                                        break;
                                                    }
                                                }
                                                if (i$iv$iv$iv10 == lastIndex$iv$iv$iv11) {
                                                    break;
                                                }
                                                i$iv$iv$iv10++;
                                                bitCount$iv$iv$iv6 = bitCount$iv$iv$iv;
                                                j$iv$iv$iv6 = j$iv$iv$iv;
                                                lastIndex$iv$iv$iv10 = lastIndex$iv$iv$iv2;
                                                m$iv$iv$iv15 = m$iv$iv$iv16;
                                            }
                                        } else {
                                            bitCount$iv$iv$iv = bitCount$iv$iv$iv6;
                                            j$iv$iv$iv = j$iv$iv$iv6;
                                            lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv10;
                                        }
                                        zContains = set$iv.isEmpty();
                                    } else {
                                        bitCount$iv$iv$iv = bitCount$iv$iv$iv6;
                                        j$iv$iv$iv = j$iv$iv$iv6;
                                        $i$f$forEachIndexed2 = $i$f$forEachIndexed5;
                                        m$iv$iv$iv4 = m$iv$iv$iv14;
                                        lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv10;
                                        $i$f$removeIf2 = $i$f$removeIf4;
                                        Intrinsics.checkNotNull(value$iv3, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                        RecomposeScopeImpl scope2 = (RecomposeScopeImpl) value$iv3;
                                        zContains = mutableScatterSet4.contains(scope2);
                                    }
                                    if (zContains) {
                                        map.removeValueAt(index$iv$iv$iv);
                                    }
                                } else {
                                    bitCount$iv$iv$iv = bitCount$iv$iv$iv6;
                                    j$iv$iv$iv = j$iv$iv$iv6;
                                    mutableScatterSet2 = mutableScatterSet3;
                                    $i$f$removeScopeIf2 = $i$f$removeScopeIf3;
                                    $i$f$forEachIndexed2 = $i$f$forEachIndexed5;
                                    m$iv$iv$iv4 = m$iv$iv$iv14;
                                    lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv10;
                                    $i$f$removeIf2 = $i$f$removeIf4;
                                }
                                slot$iv$iv$iv5 >>= 8;
                                j$iv$iv$iv6 = j$iv$iv$iv + 1;
                                mutableScatterSet3 = mutableScatterSet2;
                                $i$f$removeScopeIf3 = $i$f$removeScopeIf2;
                                $i$f$forEachIndexed5 = $i$f$forEachIndexed2;
                                m$iv$iv$iv14 = m$iv$iv$iv4;
                                $i$f$removeIf4 = $i$f$removeIf2;
                                bitCount$iv$iv$iv6 = bitCount$iv$iv$iv;
                                lastIndex$iv$iv$iv10 = lastIndex$iv$iv$iv2;
                            }
                            mutableScatterSet = mutableScatterSet3;
                            $i$f$removeScopeIf = $i$f$removeScopeIf3;
                            $i$f$forEachIndexed = $i$f$forEachIndexed5;
                            m$iv$iv$iv3 = m$iv$iv$iv14;
                            lastIndex$iv$iv$iv = lastIndex$iv$iv$iv10;
                            $i$f$removeIf = $i$f$removeIf4;
                            if (bitCount$iv$iv$iv6 != 8) {
                                break;
                            }
                        } else {
                            mutableScatterSet = mutableScatterSet3;
                            $i$f$removeScopeIf = $i$f$removeScopeIf3;
                            $i$f$forEachIndexed = $i$f$forEachIndexed5;
                            m$iv$iv$iv3 = m$iv$iv$iv14;
                            lastIndex$iv$iv$iv = lastIndex$iv$iv$iv10;
                            $i$f$removeIf = $i$f$removeIf4;
                        }
                        lastIndex$iv$iv$iv10 = lastIndex$iv$iv$iv;
                        if (i$iv$iv$iv9 == lastIndex$iv$iv$iv10) {
                            break;
                        }
                        i$iv$iv$iv9++;
                        this_$iv$iv$iv3 = this_$iv$iv$iv4;
                        scopeMap = scopeMap2;
                        mutableScatterSet3 = mutableScatterSet;
                        $i$f$removeScopeIf3 = $i$f$removeScopeIf;
                        $i$f$forEachIndexed5 = $i$f$forEachIndexed;
                        m$iv$iv$iv14 = m$iv$iv$iv3;
                        $i$f$removeIf3 = $i$f$removeIf;
                    }
                }
                cleanUpDerivedStateObservations();
                mutableScatterSet4.clear();
                return;
            }
            return;
        }
        ScopeMap<Object, RecomposeScopeImpl> scopeMap3 = this.observations;
        int $i$f$removeScopeIf4 = 0;
        MutableScatterMap<Object, Object> map2 = scopeMap3.getMap();
        int $i$f$removeIf5 = 0;
        MutableScatterMap<Object, Object> this_$iv$iv$iv5 = map2;
        int $i$f$forEachIndexed6 = 0;
        long[] m$iv$iv$iv17 = this_$iv$iv$iv5.metadata;
        int lastIndex$iv$iv$iv12 = m$iv$iv$iv17.length - 2;
        int i$iv$iv$iv11 = 0;
        if (0 <= lastIndex$iv$iv$iv12) {
            while (true) {
                long slot$iv$iv$iv7 = m$iv$iv$iv17[i$iv$iv$iv11];
                ScopeMap<Object, RecomposeScopeImpl> scopeMap4 = scopeMap3;
                int $i$f$removeScopeIf5 = $i$f$removeScopeIf4;
                int $i$f$removeIf6 = $i$f$removeIf5;
                ScatterMap this_$iv$iv$iv6 = this_$iv$iv$iv5;
                long $this$maskEmptyOrDeleted$iv$iv$iv$iv4 = ((~slot$iv$iv$iv7) << 7) & slot$iv$iv$iv7 & (-9187201950435737472L);
                if ($this$maskEmptyOrDeleted$iv$iv$iv$iv4 != -9187201950435737472L) {
                    int bitCount$iv$iv$iv8 = 8 - ((~(i$iv$iv$iv11 - lastIndex$iv$iv$iv12)) >>> 31);
                    int j$iv$iv$iv8 = 0;
                    while (j$iv$iv$iv8 < bitCount$iv$iv$iv8) {
                        long value$iv$iv$iv$iv6 = slot$iv$iv$iv7 & 255;
                        int $i$f$isFull5 = value$iv$iv$iv$iv6 < 128 ? 1 : 0;
                        if ($i$f$isFull5 != 0) {
                            int index$iv$iv$iv3 = (i$iv$iv$iv11 << 3) + j$iv$iv$iv8;
                            Object obj2 = map2.keys[index$iv$iv$iv3];
                            Object value$iv4 = map2.values[index$iv$iv$iv3];
                            if (value$iv4 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(value$iv4, str3);
                                MutableScatterSet set$iv2 = (MutableScatterSet) value$iv4;
                                $i$f$forEachIndexed4 = $i$f$forEachIndexed6;
                                m$iv$iv$iv6 = m$iv$iv$iv17;
                                Object[] elements$iv$iv2 = set$iv2.elements;
                                str2 = str3;
                                long[] m$iv$iv$iv18 = set$iv2.metadata;
                                int lastIndex$iv$iv$iv13 = m$iv$iv$iv18.length - 2;
                                lastIndex$iv$iv$iv4 = lastIndex$iv$iv$iv12;
                                int i$iv$iv$iv12 = 0;
                                if (0 <= lastIndex$iv$iv$iv13) {
                                    while (true) {
                                        long slot$iv$iv$iv8 = m$iv$iv$iv18[i$iv$iv$iv12];
                                        bitCount$iv$iv$iv2 = bitCount$iv$iv$iv8;
                                        j$iv$iv$iv2 = j$iv$iv$iv8;
                                        slot$iv$iv$iv = slot$iv$iv$iv7;
                                        i$iv$iv$iv2 = i$iv$iv$iv11;
                                        long $this$maskEmptyOrDeleted$iv$iv$iv$iv5 = ((~slot$iv$iv$iv8) << 7) & slot$iv$iv$iv8 & (-9187201950435737472L);
                                        if ($this$maskEmptyOrDeleted$iv$iv$iv$iv5 != -9187201950435737472L) {
                                            int bitCount$iv$iv$iv9 = 8 - ((~(i$iv$iv$iv12 - lastIndex$iv$iv$iv13)) >>> 31);
                                            int j$iv$iv$iv9 = 0;
                                            while (j$iv$iv$iv9 < bitCount$iv$iv$iv9) {
                                                long value$iv$iv$iv$iv7 = slot$iv$iv$iv8 & 255;
                                                int $i$f$isFull6 = value$iv$iv$iv$iv7 < 128 ? 1 : 0;
                                                if ($i$f$isFull6 != 0) {
                                                    int index$iv$iv$iv4 = (i$iv$iv$iv12 << 3) + j$iv$iv$iv9;
                                                    m$iv$iv$iv8 = m$iv$iv$iv18;
                                                    RecomposeScopeImpl scope3 = (RecomposeScopeImpl) elements$iv$iv2[index$iv$iv$iv4];
                                                    if (mutableScatterSet3.contains(scope3) || mutableScatterSet4.contains(scope3)) {
                                                        set$iv2.removeElementAt(index$iv$iv$iv4);
                                                    }
                                                } else {
                                                    m$iv$iv$iv8 = m$iv$iv$iv18;
                                                }
                                                slot$iv$iv$iv8 >>= 8;
                                                j$iv$iv$iv9++;
                                                m$iv$iv$iv18 = m$iv$iv$iv8;
                                            }
                                            m$iv$iv$iv7 = m$iv$iv$iv18;
                                            if (bitCount$iv$iv$iv9 != 8) {
                                                break;
                                            }
                                        } else {
                                            m$iv$iv$iv7 = m$iv$iv$iv18;
                                        }
                                        if (i$iv$iv$iv12 == lastIndex$iv$iv$iv13) {
                                            break;
                                        }
                                        i$iv$iv$iv12++;
                                        i$iv$iv$iv11 = i$iv$iv$iv2;
                                        m$iv$iv$iv18 = m$iv$iv$iv7;
                                        bitCount$iv$iv$iv8 = bitCount$iv$iv$iv2;
                                        j$iv$iv$iv8 = j$iv$iv$iv2;
                                        slot$iv$iv$iv7 = slot$iv$iv$iv;
                                    }
                                } else {
                                    bitCount$iv$iv$iv2 = bitCount$iv$iv$iv8;
                                    j$iv$iv$iv2 = j$iv$iv$iv8;
                                    i$iv$iv$iv2 = i$iv$iv$iv11;
                                    slot$iv$iv$iv = slot$iv$iv$iv7;
                                }
                                zIsEmpty = set$iv2.isEmpty();
                            } else {
                                str2 = str3;
                                bitCount$iv$iv$iv2 = bitCount$iv$iv$iv8;
                                j$iv$iv$iv2 = j$iv$iv$iv8;
                                $i$f$forEachIndexed4 = $i$f$forEachIndexed6;
                                m$iv$iv$iv6 = m$iv$iv$iv17;
                                lastIndex$iv$iv$iv4 = lastIndex$iv$iv$iv12;
                                i$iv$iv$iv2 = i$iv$iv$iv11;
                                slot$iv$iv$iv = slot$iv$iv$iv7;
                                Intrinsics.checkNotNull(value$iv4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                RecomposeScopeImpl scope4 = (RecomposeScopeImpl) value$iv4;
                                zIsEmpty = mutableScatterSet3.contains(scope4) || mutableScatterSet4.contains(scope4);
                            }
                            if (zIsEmpty) {
                                map2.removeValueAt(index$iv$iv$iv3);
                            }
                        } else {
                            str2 = str3;
                            bitCount$iv$iv$iv2 = bitCount$iv$iv$iv8;
                            j$iv$iv$iv2 = j$iv$iv$iv8;
                            $i$f$forEachIndexed4 = $i$f$forEachIndexed6;
                            m$iv$iv$iv6 = m$iv$iv$iv17;
                            lastIndex$iv$iv$iv4 = lastIndex$iv$iv$iv12;
                            i$iv$iv$iv2 = i$iv$iv$iv11;
                            slot$iv$iv$iv = slot$iv$iv$iv7;
                        }
                        slot$iv$iv$iv7 = slot$iv$iv$iv >> 8;
                        j$iv$iv$iv8 = j$iv$iv$iv2 + 1;
                        m$iv$iv$iv17 = m$iv$iv$iv6;
                        $i$f$forEachIndexed6 = $i$f$forEachIndexed4;
                        str3 = str2;
                        lastIndex$iv$iv$iv12 = lastIndex$iv$iv$iv4;
                        i$iv$iv$iv11 = i$iv$iv$iv2;
                        bitCount$iv$iv$iv8 = bitCount$iv$iv$iv2;
                    }
                    str = str3;
                    $i$f$forEachIndexed3 = $i$f$forEachIndexed6;
                    m$iv$iv$iv5 = m$iv$iv$iv17;
                    lastIndex$iv$iv$iv3 = lastIndex$iv$iv$iv12;
                    i$iv$iv$iv = i$iv$iv$iv11;
                    if (bitCount$iv$iv$iv8 != 8) {
                        break;
                    }
                } else {
                    str = str3;
                    $i$f$forEachIndexed3 = $i$f$forEachIndexed6;
                    m$iv$iv$iv5 = m$iv$iv$iv17;
                    lastIndex$iv$iv$iv3 = lastIndex$iv$iv$iv12;
                    i$iv$iv$iv = i$iv$iv$iv11;
                }
                lastIndex$iv$iv$iv12 = lastIndex$iv$iv$iv3;
                int i$iv$iv$iv13 = i$iv$iv$iv;
                if (i$iv$iv$iv13 == lastIndex$iv$iv$iv12) {
                    break;
                }
                i$iv$iv$iv11 = i$iv$iv$iv13 + 1;
                $i$f$removeIf5 = $i$f$removeIf6;
                this_$iv$iv$iv5 = this_$iv$iv$iv6;
                scopeMap3 = scopeMap4;
                $i$f$removeScopeIf4 = $i$f$removeScopeIf5;
                m$iv$iv$iv17 = m$iv$iv$iv5;
                $i$f$forEachIndexed6 = $i$f$forEachIndexed3;
                str3 = str;
            }
        }
        mutableScatterSet3.clear();
        cleanUpDerivedStateObservations();
    }

    private final void cleanUpDerivedStateObservations() {
        ScopeMap<Object, DerivedState<?>> scopeMap;
        int $i$f$removeScopeIf;
        int $i$f$removeIf;
        ScatterMap this_$iv$iv$iv;
        int $i$f$forEachIndexed;
        long[] m$iv$iv$iv;
        int lastIndex$iv$iv$iv;
        int i$iv$iv$iv;
        ScopeMap<Object, DerivedState<?>> scopeMap2;
        int $i$f$removeScopeIf2;
        int $i$f$removeIf2;
        ScatterMap this_$iv$iv$iv2;
        int $i$f$forEachIndexed2;
        long[] m$iv$iv$iv2;
        int lastIndex$iv$iv$iv2;
        int i$iv$iv$iv2;
        int bitCount$iv$iv$iv;
        boolean zIsEmpty;
        Object[] elements$iv$iv;
        long[] m$iv$iv$iv3;
        Object[] elements$iv$iv2;
        long[] m$iv$iv$iv4;
        ScopeMap<Object, DerivedState<?>> scopeMap3 = this.derivedStates;
        int $i$f$removeScopeIf3 = 0;
        MutableScatterMap<Object, Object> map = scopeMap3.getMap();
        int $i$f$removeIf3 = 0;
        MutableScatterMap<Object, Object> this_$iv$iv$iv3 = map;
        int $i$f$forEachIndexed3 = 0;
        long[] m$iv$iv$iv5 = this_$iv$iv$iv3.metadata;
        int lastIndex$iv$iv$iv3 = m$iv$iv$iv5.length - 2;
        int i$iv$iv$iv3 = 0;
        char c = 7;
        int i = 8;
        if (0 <= lastIndex$iv$iv$iv3) {
            while (true) {
                long slot$iv$iv$iv = m$iv$iv$iv5[i$iv$iv$iv3];
                long $this$maskEmptyOrDeleted$iv$iv$iv$iv = ((~slot$iv$iv$iv) << c) & slot$iv$iv$iv & (-9187201950435737472L);
                if ($this$maskEmptyOrDeleted$iv$iv$iv$iv == -9187201950435737472L) {
                    scopeMap = scopeMap3;
                    $i$f$removeScopeIf = $i$f$removeScopeIf3;
                    $i$f$removeIf = $i$f$removeIf3;
                    this_$iv$iv$iv = this_$iv$iv$iv3;
                    $i$f$forEachIndexed = $i$f$forEachIndexed3;
                    m$iv$iv$iv = m$iv$iv$iv5;
                    lastIndex$iv$iv$iv = lastIndex$iv$iv$iv3;
                    i$iv$iv$iv = i$iv$iv$iv3;
                } else {
                    int bitCount$iv$iv$iv2 = 8 - ((~(i$iv$iv$iv3 - lastIndex$iv$iv$iv3)) >>> 31);
                    int j$iv$iv$iv = 0;
                    while (j$iv$iv$iv < bitCount$iv$iv$iv2) {
                        long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                        int $i$f$isFull = value$iv$iv$iv$iv < 128 ? 1 : 0;
                        if ($i$f$isFull == 0) {
                            scopeMap2 = scopeMap3;
                            $i$f$removeScopeIf2 = $i$f$removeScopeIf3;
                            $i$f$removeIf2 = $i$f$removeIf3;
                            this_$iv$iv$iv2 = this_$iv$iv$iv3;
                            $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                            m$iv$iv$iv2 = m$iv$iv$iv5;
                            lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv3;
                            i$iv$iv$iv2 = i$iv$iv$iv3;
                            bitCount$iv$iv$iv = bitCount$iv$iv$iv2;
                        } else {
                            int index$iv$iv$iv = (i$iv$iv$iv3 << 3) + j$iv$iv$iv;
                            Object obj = map.keys[index$iv$iv$iv];
                            Object value$iv = map.values[index$iv$iv$iv];
                            if (value$iv instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(value$iv, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                MutableScatterSet set$iv = (MutableScatterSet) value$iv;
                                scopeMap2 = scopeMap3;
                                $i$f$removeScopeIf2 = $i$f$removeScopeIf3;
                                Object[] elements$iv$iv3 = set$iv.elements;
                                $i$f$removeIf2 = $i$f$removeIf3;
                                this_$iv$iv$iv2 = this_$iv$iv$iv3;
                                long[] m$iv$iv$iv6 = set$iv.metadata;
                                int lastIndex$iv$iv$iv4 = m$iv$iv$iv6.length - 2;
                                $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                                int i$iv$iv$iv4 = 0;
                                if (0 <= lastIndex$iv$iv$iv4) {
                                    while (true) {
                                        long slot$iv$iv$iv2 = m$iv$iv$iv6[i$iv$iv$iv4];
                                        m$iv$iv$iv2 = m$iv$iv$iv5;
                                        lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv3;
                                        i$iv$iv$iv2 = i$iv$iv$iv3;
                                        bitCount$iv$iv$iv = bitCount$iv$iv$iv2;
                                        long $this$maskEmptyOrDeleted$iv$iv$iv$iv2 = ((~slot$iv$iv$iv2) << 7) & slot$iv$iv$iv2 & (-9187201950435737472L);
                                        if ($this$maskEmptyOrDeleted$iv$iv$iv$iv2 == -9187201950435737472L) {
                                            elements$iv$iv = elements$iv$iv3;
                                            m$iv$iv$iv3 = m$iv$iv$iv6;
                                        } else {
                                            int bitCount$iv$iv$iv3 = 8 - ((~(i$iv$iv$iv4 - lastIndex$iv$iv$iv4)) >>> 31);
                                            int j$iv$iv$iv2 = 0;
                                            while (j$iv$iv$iv2 < bitCount$iv$iv$iv3) {
                                                long value$iv$iv$iv$iv2 = slot$iv$iv$iv2 & 255;
                                                int $i$f$isFull2 = value$iv$iv$iv$iv2 < 128 ? 1 : 0;
                                                if ($i$f$isFull2 == 0) {
                                                    elements$iv$iv2 = elements$iv$iv3;
                                                    m$iv$iv$iv4 = m$iv$iv$iv6;
                                                } else {
                                                    int index$iv$iv$iv2 = (i$iv$iv$iv4 << 3) + j$iv$iv$iv2;
                                                    elements$iv$iv2 = elements$iv$iv3;
                                                    DerivedState derivedState = (DerivedState) elements$iv$iv3[index$iv$iv$iv2];
                                                    m$iv$iv$iv4 = m$iv$iv$iv6;
                                                    if (!this.observations.contains(derivedState)) {
                                                        set$iv.removeElementAt(index$iv$iv$iv2);
                                                    }
                                                }
                                                slot$iv$iv$iv2 >>= 8;
                                                j$iv$iv$iv2++;
                                                elements$iv$iv3 = elements$iv$iv2;
                                                m$iv$iv$iv6 = m$iv$iv$iv4;
                                            }
                                            elements$iv$iv = elements$iv$iv3;
                                            m$iv$iv$iv3 = m$iv$iv$iv6;
                                            if (bitCount$iv$iv$iv3 != 8) {
                                                break;
                                            }
                                        }
                                        if (i$iv$iv$iv4 == lastIndex$iv$iv$iv4) {
                                            break;
                                        }
                                        i$iv$iv$iv4++;
                                        i$iv$iv$iv3 = i$iv$iv$iv2;
                                        bitCount$iv$iv$iv2 = bitCount$iv$iv$iv;
                                        m$iv$iv$iv5 = m$iv$iv$iv2;
                                        lastIndex$iv$iv$iv3 = lastIndex$iv$iv$iv2;
                                        elements$iv$iv3 = elements$iv$iv;
                                        m$iv$iv$iv6 = m$iv$iv$iv3;
                                    }
                                } else {
                                    m$iv$iv$iv2 = m$iv$iv$iv5;
                                    lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv3;
                                    i$iv$iv$iv2 = i$iv$iv$iv3;
                                    bitCount$iv$iv$iv = bitCount$iv$iv$iv2;
                                }
                                zIsEmpty = set$iv.isEmpty();
                            } else {
                                scopeMap2 = scopeMap3;
                                $i$f$removeScopeIf2 = $i$f$removeScopeIf3;
                                $i$f$removeIf2 = $i$f$removeIf3;
                                this_$iv$iv$iv2 = this_$iv$iv$iv3;
                                $i$f$forEachIndexed2 = $i$f$forEachIndexed3;
                                m$iv$iv$iv2 = m$iv$iv$iv5;
                                lastIndex$iv$iv$iv2 = lastIndex$iv$iv$iv3;
                                i$iv$iv$iv2 = i$iv$iv$iv3;
                                bitCount$iv$iv$iv = bitCount$iv$iv$iv2;
                                Intrinsics.checkNotNull(value$iv, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                DerivedState derivedState2 = (DerivedState) value$iv;
                                zIsEmpty = !this.observations.contains(derivedState2);
                            }
                            if (zIsEmpty) {
                                map.removeValueAt(index$iv$iv$iv);
                            }
                        }
                        slot$iv$iv$iv >>= 8;
                        j$iv$iv$iv++;
                        i = 8;
                        $i$f$removeScopeIf3 = $i$f$removeScopeIf2;
                        scopeMap3 = scopeMap2;
                        $i$f$removeIf3 = $i$f$removeIf2;
                        this_$iv$iv$iv3 = this_$iv$iv$iv2;
                        $i$f$forEachIndexed3 = $i$f$forEachIndexed2;
                        i$iv$iv$iv3 = i$iv$iv$iv2;
                        bitCount$iv$iv$iv2 = bitCount$iv$iv$iv;
                        m$iv$iv$iv5 = m$iv$iv$iv2;
                        lastIndex$iv$iv$iv3 = lastIndex$iv$iv$iv2;
                    }
                    scopeMap = scopeMap3;
                    $i$f$removeScopeIf = $i$f$removeScopeIf3;
                    $i$f$removeIf = $i$f$removeIf3;
                    this_$iv$iv$iv = this_$iv$iv$iv3;
                    $i$f$forEachIndexed = $i$f$forEachIndexed3;
                    m$iv$iv$iv = m$iv$iv$iv5;
                    lastIndex$iv$iv$iv = lastIndex$iv$iv$iv3;
                    i$iv$iv$iv = i$iv$iv$iv3;
                    if (bitCount$iv$iv$iv2 != i) {
                        break;
                    }
                }
                int i$iv$iv$iv5 = i$iv$iv$iv;
                lastIndex$iv$iv$iv3 = lastIndex$iv$iv$iv;
                if (i$iv$iv$iv5 == lastIndex$iv$iv$iv3) {
                    break;
                }
                i$iv$iv$iv3 = i$iv$iv$iv5 + 1;
                $i$f$removeScopeIf3 = $i$f$removeScopeIf;
                scopeMap3 = scopeMap;
                $i$f$removeIf3 = $i$f$removeIf;
                this_$iv$iv$iv3 = this_$iv$iv$iv;
                $i$f$forEachIndexed3 = $i$f$forEachIndexed;
                m$iv$iv$iv5 = m$iv$iv$iv;
                c = 7;
                i = 8;
            }
        }
        if (this.conditionallyInvalidatedScopes.isNotEmpty()) {
            MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.conditionallyInvalidatedScopes;
            Object[] elements$iv = mutableScatterSet.elements;
            MutableScatterSet<RecomposeScopeImpl> this_$iv$iv = mutableScatterSet;
            long[] m$iv$iv = this_$iv$iv.metadata;
            int lastIndex$iv$iv = m$iv$iv.length - 2;
            int i$iv$iv = 0;
            if (0 > lastIndex$iv$iv) {
                return;
            }
            while (true) {
                long slot$iv$iv = m$iv$iv[i$iv$iv];
                long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                    int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                    for (int j$iv$iv = 0; j$iv$iv < bitCount$iv$iv; j$iv$iv++) {
                        long value$iv$iv$iv = slot$iv$iv & 255;
                        int $i$f$isFull3 = value$iv$iv$iv < 128 ? 1 : 0;
                        if ($i$f$isFull3 != 0) {
                            int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                            RecomposeScopeImpl scope = (RecomposeScopeImpl) elements$iv[index$iv$iv];
                            if (!scope.isConditional()) {
                                mutableScatterSet.removeElementAt(index$iv$iv);
                            }
                        }
                        slot$iv$iv >>= 8;
                    }
                    if (bitCount$iv$iv != 8) {
                        return;
                    }
                }
                if (i$iv$iv == lastIndex$iv$iv) {
                    return;
                } else {
                    i$iv$iv++;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.RecomposeScopeOwner
    public void recordReadOf(Object value) {
        RecomposeScopeImpl it;
        int i;
        boolean z;
        int i2;
        if (!getAreChildrenComposing() && (it = this.composer.getCurrentRecomposeScope$runtime_release()) != null) {
            int i3 = 0;
            it.setUsed(true);
            boolean alreadyRead = it.recordRead(value);
            if (!alreadyRead) {
                if (value instanceof StateObjectImpl) {
                    ReaderKind.Companion companion = ReaderKind.INSTANCE;
                    ((StateObjectImpl) value).m3398recordReadInh_f27i8$runtime_release(ReaderKind.m3385constructorimpl(1));
                }
                this.observations.add(value, it);
                if (value instanceof DerivedState) {
                    DerivedState.Record record = ((DerivedState) value).getCurrentRecord();
                    this.derivedStates.removeScope(value);
                    ObjectIntMap<StateObject> dependencies = record.getDependencies();
                    int $i$f$forEachKey = 0;
                    Object[] k$iv = dependencies.keys;
                    long[] m$iv$iv = dependencies.metadata;
                    int lastIndex$iv$iv = m$iv$iv.length - 2;
                    int i$iv$iv = 0;
                    if (0 <= lastIndex$iv$iv) {
                        while (true) {
                            long slot$iv$iv = m$iv$iv[i$iv$iv];
                            boolean alreadyRead2 = alreadyRead;
                            ObjectIntMap<StateObject> objectIntMap = dependencies;
                            int $i$f$forEachKey2 = $i$f$forEachKey;
                            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                                i = i3;
                                z = true;
                            } else {
                                int i4 = 8;
                                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                                int j$iv$iv = 0;
                                while (j$iv$iv < bitCount$iv$iv) {
                                    long value$iv$iv$iv = slot$iv$iv & 255;
                                    if (!(value$iv$iv$iv < 128)) {
                                        i2 = i3;
                                    } else {
                                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                        StateObject dependency = (StateObject) k$iv[index$iv$iv];
                                        i2 = i3;
                                        if (dependency instanceof StateObjectImpl) {
                                            ReaderKind.Companion companion2 = ReaderKind.INSTANCE;
                                            int index$iv$iv2 = ReaderKind.m3385constructorimpl(1);
                                            ((StateObjectImpl) dependency).m3398recordReadInh_f27i8$runtime_release(index$iv$iv2);
                                        }
                                        this.derivedStates.add(dependency, value);
                                    }
                                    slot$iv$iv >>= 8;
                                    j$iv$iv++;
                                    i4 = 8;
                                    i3 = i2;
                                }
                                i = i3;
                                z = true;
                                if (bitCount$iv$iv != i4) {
                                    break;
                                }
                            }
                            if (i$iv$iv == lastIndex$iv$iv) {
                                break;
                            }
                            i$iv$iv++;
                            dependencies = objectIntMap;
                            $i$f$forEachKey = $i$f$forEachKey2;
                            alreadyRead = alreadyRead2;
                            i3 = i;
                        }
                    }
                    it.recordDerivedStateValue((DerivedState) value, record.getCurrentValue());
                }
            }
        }
    }

    private final void invalidateScopeOfLocked(Object value) {
        Object[] k$iv$iv;
        Object[] k$iv$iv2;
        ScopeMap<Object, RecomposeScopeImpl> scopeMap = this.observations;
        int $i$f$forEachScopeOf = 0;
        Object value$iv = scopeMap.getMap().get(value);
        if (value$iv == null) {
            return;
        }
        if (!(value$iv instanceof MutableScatterSet)) {
            RecomposeScopeImpl scope = (RecomposeScopeImpl) value$iv;
            if (scope.invalidateForResult(value) == InvalidationResult.IMMINENT) {
                this.observationsProcessed.add(value, scope);
                return;
            }
            return;
        }
        ScatterSet this_$iv$iv = (MutableScatterSet) value$iv;
        int $i$f$forEach = 0;
        Object[] k$iv$iv3 = this_$iv$iv.elements;
        long[] m$iv$iv$iv = this_$iv$iv.metadata;
        int lastIndex$iv$iv$iv = m$iv$iv$iv.length - 2;
        int i$iv$iv$iv = 0;
        if (0 > lastIndex$iv$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv$iv = m$iv$iv$iv[i$iv$iv$iv];
            ScopeMap<Object, RecomposeScopeImpl> scopeMap2 = scopeMap;
            int $i$f$forEachScopeOf2 = $i$f$forEachScopeOf;
            ScatterSet this_$iv$iv2 = this_$iv$iv;
            int $i$f$forEach2 = $i$f$forEach;
            long $this$maskEmptyOrDeleted$iv$iv$iv$iv = ((~slot$iv$iv$iv) << 7) & slot$iv$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv$iv == -9187201950435737472L) {
                k$iv$iv = k$iv$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv$iv = 8 - ((~(i$iv$iv$iv - lastIndex$iv$iv$iv)) >>> 31);
                int j$iv$iv$iv = 0;
                while (j$iv$iv$iv < bitCount$iv$iv$iv) {
                    long value$iv$iv$iv$iv = slot$iv$iv$iv & 255;
                    if (!(value$iv$iv$iv$iv < 128)) {
                        k$iv$iv2 = k$iv$iv3;
                    } else {
                        int index$iv$iv$iv = (i$iv$iv$iv << 3) + j$iv$iv$iv;
                        RecomposeScopeImpl scope2 = (RecomposeScopeImpl) k$iv$iv3[index$iv$iv$iv];
                        k$iv$iv2 = k$iv$iv3;
                        if (scope2.invalidateForResult(value) == InvalidationResult.IMMINENT) {
                            this.observationsProcessed.add(value, scope2);
                        }
                    }
                    i = 8;
                    slot$iv$iv$iv >>= 8;
                    j$iv$iv$iv++;
                    k$iv$iv3 = k$iv$iv2;
                }
                k$iv$iv = k$iv$iv3;
                if (bitCount$iv$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv$iv == lastIndex$iv$iv$iv) {
                return;
            }
            i$iv$iv$iv++;
            this_$iv$iv = this_$iv$iv2;
            $i$f$forEach = $i$f$forEach2;
            scopeMap = scopeMap2;
            $i$f$forEachScopeOf = $i$f$forEachScopeOf2;
            k$iv$iv3 = k$iv$iv;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    @Override // androidx.compose.runtime.ControlledComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void recordWriteOf(java.lang.Object r26) throws java.lang.Throwable {
        /*
            r25 = this;
            r1 = r25
            java.lang.Object r2 = r1.lock
            r3 = 0
            monitor-enter(r2)
            r0 = 0
            r25.invalidateScopeOfLocked(r26)     // Catch: java.lang.Throwable -> Lbe
            androidx.compose.runtime.collection.ScopeMap<java.lang.Object, androidx.compose.runtime.DerivedState<?>> r4 = r1.derivedStates     // Catch: java.lang.Throwable -> Lbe
            r5 = 0
            androidx.collection.MutableScatterMap r6 = r4.getMap()     // Catch: java.lang.Throwable -> Lbe
            r7 = r26
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> Lbe
            if (r6 == 0) goto Lb2
            boolean r8 = r6 instanceof androidx.collection.MutableScatterSet     // Catch: java.lang.Throwable -> Lbe
            if (r8 == 0) goto La5
            r8 = r6
            androidx.collection.MutableScatterSet r8 = (androidx.collection.MutableScatterSet) r8     // Catch: java.lang.Throwable -> Lbe
            androidx.collection.ScatterSet r8 = (androidx.collection.ScatterSet) r8     // Catch: java.lang.Throwable -> Lbe
            r9 = 0
            java.lang.Object[] r10 = r8.elements     // Catch: java.lang.Throwable -> Lbe
            r11 = r8
            r12 = 0
            long[] r13 = r11.metadata     // Catch: java.lang.Throwable -> Lbe
            int r14 = r13.length     // Catch: java.lang.Throwable -> Lbe
            int r14 = r14 + (-2)
            r15 = 0
            if (r15 > r14) goto L9c
        L31:
            r16 = r13[r15]     // Catch: java.lang.Throwable -> Lbe
            r18 = r16
            r20 = 0
            r21 = r3
            r22 = r4
            r3 = r18
            r18 = r8
            long r7 = ~r3
            r19 = 7
            long r7 = r7 << r19
            long r7 = r7 & r3
            r23 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r3 = r7 & r23
            int r3 = (r3 > r23 ? 1 : (r3 == r23 ? 0 : -1))
            if (r3 == 0) goto L8f
            int r3 = r15 - r14
            int r3 = ~r3
            int r3 = r3 >>> 31
            r4 = 8
            int r3 = 8 - r3
            r7 = 0
        L5a:
            if (r7 >= r3) goto L8d
            r19 = 255(0xff, double:1.26E-321)
            long r19 = r16 & r19
            r8 = 0
            r23 = 128(0x80, double:6.3E-322)
            int r23 = (r19 > r23 ? 1 : (r19 == r23 ? 0 : -1))
            if (r23 >= 0) goto L6a
            r23 = 1
            goto L6c
        L6a:
            r23 = 0
        L6c:
            if (r23 == 0) goto L86
            int r8 = r15 << 3
            int r8 = r8 + r7
            r19 = r8
            r20 = 0
            r23 = r10[r19]     // Catch: java.lang.Throwable -> Lbc
            androidx.compose.runtime.DerivedState r23 = (androidx.compose.runtime.DerivedState) r23     // Catch: java.lang.Throwable -> Lbc
            r24 = r23
            r23 = 0
            r4 = r24
            r1.invalidateScopeOfLocked(r4)     // Catch: java.lang.Throwable -> Lbc
        L86:
            r4 = 8
            long r16 = r16 >> r4
            int r7 = r7 + 1
            goto L5a
        L8d:
            if (r3 != r4) goto La3
        L8f:
            if (r15 == r14) goto La2
            int r15 = r15 + 1
            r7 = r26
            r8 = r18
            r3 = r21
            r4 = r22
            goto L31
        L9c:
            r21 = r3
            r22 = r4
            r18 = r8
        La2:
        La3:
            goto Lb6
        La5:
            r21 = r3
            r22 = r4
            r3 = r6
            androidx.compose.runtime.DerivedState r3 = (androidx.compose.runtime.DerivedState) r3     // Catch: java.lang.Throwable -> Lbc
            r4 = 0
            r1.invalidateScopeOfLocked(r3)     // Catch: java.lang.Throwable -> Lbc
            goto Lb6
        Lb2:
            r21 = r3
            r22 = r4
        Lb6:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r2)
            return
        Lbc:
            r0 = move-exception
            goto Lc1
        Lbe:
            r0 = move-exception
            r21 = r3
        Lc1:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.recordWriteOf(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.compose.runtime.ControlledComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean recompose() throws java.lang.Exception {
        /*
            r20 = this;
            r1 = r20
            java.lang.Object r2 = r1.lock
            r3 = 0
            monitor-enter(r2)
            r4 = 0
            r20.drainPendingModificationsForCompositionLocked()     // Catch: java.lang.Throwable -> Lb6
            r5 = r20
            r6 = 0
            r7 = r5
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = r20
            r12 = 0
            androidx.compose.runtime.collection.ScopeMap r0 = r11.takeInvalidations()     // Catch: java.lang.Throwable -> L8f
            r13 = r0
            r0 = r13
            r14 = 0
            androidx.compose.runtime.tooling.CompositionObserver r15 = r20.observer()     // Catch: java.lang.Exception -> L82 java.lang.Throwable -> L8f
            if (r15 == 0) goto L4f
            r16 = r3
            r3 = r1
            androidx.compose.runtime.Composition r3 = (androidx.compose.runtime.Composition) r3     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L49
            r17 = r4
            java.util.Map r4 = r0.asMap()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3f
            r18 = r6
            java.lang.String r6 = "null cannot be cast to non-null type kotlin.collections.Map<androidx.compose.runtime.RecomposeScope, kotlin.collections.Set<kotlin.Any>?>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r6)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r15.onBeginComposition(r3, r4)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            goto L55
        L3b:
            r0 = move-exception
            r18 = r6
            goto L96
        L3f:
            r0 = move-exception
            r18 = r6
            goto L89
        L43:
            r0 = move-exception
            r17 = r4
            r18 = r6
            goto L96
        L49:
            r0 = move-exception
            r17 = r4
            r18 = r6
            goto L89
        L4f:
            r16 = r3
            r17 = r4
            r18 = r6
        L55:
            androidx.compose.runtime.ComposerImpl r3 = r1.composer     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            boolean r3 = r3.recompose$runtime_release(r0)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r4 = r3
            r6 = 0
            if (r4 != 0) goto L62
            r20.drainPendingModificationsLocked()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
        L62:
            if (r15 == 0) goto L6d
            r19 = r0
            r0 = r1
            androidx.compose.runtime.Composition r0 = (androidx.compose.runtime.Composition) r0     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r15.onEndComposition(r0)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            goto L6f
        L6d:
            r19 = r0
        L6f:
            r0 = r3
            r4 = 0
            r6 = 1
            monitor-exit(r2)
            return r3
        L80:
            r0 = move-exception
            goto L89
        L82:
            r0 = move-exception
            r16 = r3
            r17 = r4
            r18 = r6
        L89:
            r11.invalidations = r13     // Catch: java.lang.Throwable -> L8d
            throw r0     // Catch: java.lang.Throwable -> L8d
        L8d:
            r0 = move-exception
            goto L96
        L8f:
            r0 = move-exception
            r16 = r3
            r17 = r4
            r18 = r6
        L96:
            if (r9 != 0) goto Lac
            java.util.Set<androidx.compose.runtime.RememberObserver> r3 = r7.abandonSet     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            if (r3 != 0) goto Lac
            androidx.compose.runtime.CompositionImpl$RememberEventDispatcher r3 = new androidx.compose.runtime.CompositionImpl$RememberEventDispatcher     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.util.Set<androidx.compose.runtime.RememberObserver> r4 = r7.abandonSet     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r3.dispatchAbandons()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
        Lac:
            throw r0     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
        Lae:
            r0 = move-exception
            goto Lb9
        Lb0:
            r0 = move-exception
            r5.abandonChanges()     // Catch: java.lang.Throwable -> Lae
            throw r0     // Catch: java.lang.Throwable -> Lae
        Lb6:
            r0 = move-exception
            r16 = r3
        Lb9:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.recompose():boolean");
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void insertMovableContent(List<Pair<MovableContentStateReference, MovableContentStateReference>> references) {
        boolean z;
        int index$iv$iv = 0;
        int size = references.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv = references.get(index$iv$iv);
                if (!Intrinsics.areEqual(((Pair) item$iv$iv).getFirst().getComposition(), this)) {
                    z = false;
                    break;
                }
                index$iv$iv++;
            } else {
                z = true;
                break;
            }
        }
        ComposerKt.runtimeCheck(z);
        try {
            this.composer.insertMovableContentReferences(references);
            Unit unit = Unit.INSTANCE;
        } finally {
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.compose.runtime.ControlledComposition
    public void disposeUnusedMovableContent(MovableContentState state) {
        RememberEventDispatcher manager = new RememberEventDispatcher(this.abandonSet);
        SlotTable slotTable = state.getSlotTable();
        SlotWriter writer$iv = slotTable.openWriter();
        try {
            ComposerKt.removeCurrentGroup(writer$iv, manager);
            Unit unit = Unit.INSTANCE;
            writer$iv.close(true);
            manager.dispatchRememberObservers();
        } catch (Throwable th) {
            writer$iv.close(false);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void applyChangesInLocked(androidx.compose.runtime.changelist.ChangeList r52) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.applyChangesInLocked(androidx.compose.runtime.changelist.ChangeList):void");
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyChanges() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            try {
                applyChangesInLocked(this.changes);
                drainPendingModificationsLocked();
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            } finally {
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyLateChanges() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            try {
                if (this.lateChanges.isNotEmpty()) {
                    applyChangesInLocked(this.lateChanges);
                }
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            } finally {
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void changesApplied() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            try {
                this.composer.changesApplied$runtime_release();
                if (!this.abandonSet.isEmpty()) {
                    new RememberEventDispatcher(this.abandonSet).dispatchAbandons();
                }
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            } finally {
            }
        }
    }

    private final <T> T guardInvalidationsLocked(Function1<? super ScopeMap<RecomposeScopeImpl, Object>, ? extends T> block) throws Exception {
        ScopeMap<RecomposeScopeImpl, Object> scopeMapTakeInvalidations = takeInvalidations();
        try {
            return block.invoke(scopeMapTakeInvalidations);
        } catch (Exception e) {
            this.invalidations = scopeMapTakeInvalidations;
            throw e;
        }
    }

    private final <T> T guardChanges(Function0<? extends T> block) throws Exception {
        try {
            try {
                T tInvoke = block.invoke();
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return tInvoke;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                if (0 == 0 && !this.abandonSet.isEmpty()) {
                    new RememberEventDispatcher(this.abandonSet).dispatchAbandons();
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        } catch (Exception e) {
            abandonChanges();
            throw e;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void abandonChanges() {
        this.pendingModifications.set(null);
        this.changes.clear();
        this.lateChanges.clear();
        if (!this.abandonSet.isEmpty()) {
            new RememberEventDispatcher(this.abandonSet).dispatchAbandons();
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void invalidateAll() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            Object[] $this$forEach$iv = this.slotTable.getSlots();
            for (Object element$iv : $this$forEach$iv) {
                RecomposeScopeImpl recomposeScopeImpl = element$iv instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) element$iv : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.invalidate();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void verifyConsistent() {
        Object lock$iv = this.lock;
        synchronized (lock$iv) {
            if (!isComposing()) {
                this.composer.verifyConsistent$runtime_release();
                this.slotTable.verifyWellFormed();
                validateRecomposeScopeAnchors(this.slotTable);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public <R> R delegateInvalidations(ControlledComposition to, int groupIndex, Function0<? extends R> block) {
        if (to != null && !Intrinsics.areEqual(to, this) && groupIndex >= 0) {
            this.invalidationDelegate = (CompositionImpl) to;
            this.invalidationDelegateGroup = groupIndex;
            try {
                return block.invoke();
            } finally {
                this.invalidationDelegate = null;
                this.invalidationDelegateGroup = 0;
            }
        }
        return block.invoke();
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public InvalidationResult invalidate(RecomposeScopeImpl scope, Object instance) {
        CompositionImpl delegate;
        if (scope.getDefaultsInScope()) {
            scope.setDefaultsInvalid(true);
        }
        Anchor anchor = scope.getAnchor();
        if (anchor == null || !anchor.getValid()) {
            return InvalidationResult.IGNORED;
        }
        if (!this.slotTable.ownsAnchor(anchor)) {
            Object lock$iv = this.lock;
            synchronized (lock$iv) {
                delegate = this.invalidationDelegate;
            }
            if (delegate != null && delegate.tryImminentInvalidation(scope, instance)) {
                return InvalidationResult.IMMINENT;
            }
            return InvalidationResult.IGNORED;
        }
        if (!scope.getCanRecompose()) {
            return InvalidationResult.IGNORED;
        }
        return invalidateChecked(scope, anchor, instance);
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public void recomposeScopeReleased(RecomposeScopeImpl scope) {
        this.pendingInvalidScopes = true;
    }

    @Override // androidx.compose.runtime.CompositionServices
    public <T> T getCompositionService(CompositionServiceKey<T> key) {
        if (Intrinsics.areEqual(key, CompositionKt.getCompositionImplServiceKey())) {
            return (T) this;
        }
        return null;
    }

    private final boolean tryImminentInvalidation(RecomposeScopeImpl scope, Object instance) {
        return isComposing() && this.composer.tryImminentInvalidation$runtime_release(scope, instance);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a A[Catch: all -> 0x0181, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0181, blocks: (B:5:0x000d, B:18:0x002a, B:23:0x0034, B:31:0x005a, B:33:0x0069, B:35:0x006f), top: B:96:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0157 A[Catch: all -> 0x015d, TRY_LEAVE, TryCatch #2 {all -> 0x015d, blocks: (B:37:0x0084, B:39:0x0090, B:41:0x00b1, B:43:0x00bd, B:48:0x00ce, B:76:0x0157, B:56:0x00f5, B:62:0x0109, B:66:0x0124), top: B:99:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final androidx.compose.runtime.InvalidationResult invalidateChecked(androidx.compose.runtime.RecomposeScopeImpl r37, androidx.compose.runtime.Anchor r38, java.lang.Object r39) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.invalidateChecked(androidx.compose.runtime.RecomposeScopeImpl, androidx.compose.runtime.Anchor, java.lang.Object):androidx.compose.runtime.InvalidationResult");
    }

    public final void removeObservation$runtime_release(Object instance, RecomposeScopeImpl scope) {
        this.observations.remove(instance, scope);
    }

    public final void removeDerivedStateObservation$runtime_release(DerivedState<?> state) {
        if (!this.observations.contains(state)) {
            this.derivedStates.removeScope(state);
        }
    }

    private final ScopeMap<RecomposeScopeImpl, Object> takeInvalidations() {
        ScopeMap<RecomposeScopeImpl, Object> scopeMap = this.invalidations;
        this.invalidations = new ScopeMap<>();
        return scopeMap;
    }

    private final void validateRecomposeScopeAnchors(SlotTable slotTable) {
        SlotTable slotTable2 = slotTable;
        Object[] $this$mapNotNull$iv = slotTable.getSlots();
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv$iv : $this$mapNotNull$iv) {
            RecomposeScopeImpl recomposeScopeImpl = element$iv$iv$iv instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) element$iv$iv$iv : null;
            if (recomposeScopeImpl != null) {
                destination$iv$iv.add(recomposeScopeImpl);
            }
        }
        List scopes = (List) destination$iv$iv;
        int index$iv = 0;
        int size = scopes.size();
        while (index$iv < size) {
            Object item$iv = scopes.get(index$iv);
            RecomposeScopeImpl scope = (RecomposeScopeImpl) item$iv;
            Anchor anchor = scope.getAnchor();
            if (anchor != null) {
                boolean value$iv = slotTable2.slotsOf$runtime_release(anchor.toIndexFor(slotTable2)).contains(scope);
                if (!value$iv) {
                    int dataIndex = ArraysKt.indexOf((RecomposeScopeImpl[]) slotTable.getSlots(), scope);
                    PreconditionsKt.throwIllegalStateException("Misaligned anchor " + anchor + " in scope " + scope + " encountered, scope found at " + dataIndex);
                }
            }
            index$iv++;
            slotTable2 = slotTable;
        }
    }

    private final <T> T trackAbandonedValues(Function0<? extends T> block) {
        try {
            T tInvoke = block.invoke();
            InlineMarker.finallyStart(1);
            InlineMarker.finallyEnd(1);
            return tInvoke;
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            if (0 == 0 && !this.abandonSet.isEmpty()) {
                new RememberEventDispatcher(this.abandonSet).dispatchAbandons();
            }
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }

    private final CompositionObserver observer() {
        CompositionObserverHolder holder = this.observerHolder;
        if (holder.getRoot()) {
            return holder.getObserver();
        }
        CompositionObserverHolder parentHolder = this.parent.getObserverHolder();
        CompositionObserver parentObserver = parentHolder != null ? parentHolder.getObserver() : null;
        if (!Intrinsics.areEqual(parentObserver, holder.getObserver())) {
            holder.setObserver(parentObserver);
        }
        return parentObserver;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0028 A[Catch: all -> 0x00b5, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00b5, blocks: (B:5:0x0007, B:17:0x0028), top: B:51:0x0007 }] */
    @Override // androidx.compose.runtime.ReusableComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void deactivate() throws java.lang.Throwable {
        /*
            r18 = this;
            r1 = r18
            java.lang.Object r2 = r1.lock
            r3 = 0
            monitor-enter(r2)
            r4 = 0
            androidx.compose.runtime.SlotTable r0 = r1.slotTable     // Catch: java.lang.Throwable -> Lb5
            int r0 = r0.getGroupsSize()     // Catch: java.lang.Throwable -> Lb5
            if (r0 <= 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            r5 = r0
            if (r5 != 0) goto L28
            java.util.Set<androidx.compose.runtime.RememberObserver> r0 = r1.abandonSet     // Catch: java.lang.Throwable -> L23
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: java.lang.Throwable -> L23
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L20
            goto L28
        L20:
            r17 = r3
            goto L85
        L23:
            r0 = move-exception
            r17 = r3
            goto Lb8
        L28:
            java.lang.String r0 = "Compose:deactivate"
            r6 = r0
            r7 = 0
            androidx.compose.runtime.Trace r0 = androidx.compose.runtime.Trace.INSTANCE     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r0 = r0.beginSection(r6)     // Catch: java.lang.Throwable -> Lb5
            r8 = r0
            r9 = 0
            androidx.compose.runtime.CompositionImpl$RememberEventDispatcher r0 = new androidx.compose.runtime.CompositionImpl$RememberEventDispatcher     // Catch: java.lang.Throwable -> Lac
            java.util.Set<androidx.compose.runtime.RememberObserver> r10 = r1.abandonSet     // Catch: java.lang.Throwable -> Lac
            r0.<init>(r10)     // Catch: java.lang.Throwable -> Lac
            r10 = r0
            if (r5 == 0) goto L76
            androidx.compose.runtime.Applier<?> r0 = r1.applier     // Catch: java.lang.Throwable -> Lac
            r0.onBeginChanges()     // Catch: java.lang.Throwable -> Lac
            androidx.compose.runtime.SlotTable r0 = r1.slotTable     // Catch: java.lang.Throwable -> Lac
            r11 = r0
            r12 = 0
            androidx.compose.runtime.SlotWriter r0 = r11.openWriter()     // Catch: java.lang.Throwable -> Lac
            r13 = r0
            r14 = 0
            r15 = 0
            r0 = r13
            r16 = 0
            r17 = r3
            r3 = r10
            androidx.compose.runtime.RememberManager r3 = (androidx.compose.runtime.RememberManager) r3     // Catch: java.lang.Throwable -> L71
            androidx.compose.runtime.ComposerKt.deactivateCurrentGroup(r0, r3)     // Catch: java.lang.Throwable -> L71
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L71
            r3 = 0
            r0 = 1
            r13.close(r0)     // Catch: java.lang.Throwable -> Laa
            androidx.compose.runtime.Applier<?> r0 = r1.applier     // Catch: java.lang.Throwable -> Laa
            r0.onEndChanges()     // Catch: java.lang.Throwable -> Laa
            r10.dispatchRememberObservers()     // Catch: java.lang.Throwable -> Laa
            goto L78
        L71:
            r0 = move-exception
            r13.close(r15)     // Catch: java.lang.Throwable -> Laa
            throw r0     // Catch: java.lang.Throwable -> Laa
        L76:
            r17 = r3
        L78:
            r10.dispatchAbandons()     // Catch: java.lang.Throwable -> Laa
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Laa
            androidx.compose.runtime.Trace r0 = androidx.compose.runtime.Trace.INSTANCE     // Catch: java.lang.Throwable -> La8
            r0.endSection(r8)     // Catch: java.lang.Throwable -> La8
        L85:
            androidx.compose.runtime.collection.ScopeMap<java.lang.Object, androidx.compose.runtime.RecomposeScopeImpl> r0 = r1.observations     // Catch: java.lang.Throwable -> La8
            r0.clear()     // Catch: java.lang.Throwable -> La8
            androidx.compose.runtime.collection.ScopeMap<java.lang.Object, androidx.compose.runtime.DerivedState<?>> r0 = r1.derivedStates     // Catch: java.lang.Throwable -> La8
            r0.clear()     // Catch: java.lang.Throwable -> La8
            androidx.compose.runtime.collection.ScopeMap<androidx.compose.runtime.RecomposeScopeImpl, java.lang.Object> r0 = r1.invalidations     // Catch: java.lang.Throwable -> La8
            r0.clear()     // Catch: java.lang.Throwable -> La8
            androidx.compose.runtime.changelist.ChangeList r0 = r1.changes     // Catch: java.lang.Throwable -> La8
            r0.clear()     // Catch: java.lang.Throwable -> La8
            androidx.compose.runtime.changelist.ChangeList r0 = r1.lateChanges     // Catch: java.lang.Throwable -> La8
            r0.clear()     // Catch: java.lang.Throwable -> La8
            androidx.compose.runtime.ComposerImpl r0 = r1.composer     // Catch: java.lang.Throwable -> La8
            r0.deactivate$runtime_release()     // Catch: java.lang.Throwable -> La8
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> La8
            monitor-exit(r2)
            return
        La8:
            r0 = move-exception
            goto Lb8
        Laa:
            r0 = move-exception
            goto Laf
        Lac:
            r0 = move-exception
            r17 = r3
        Laf:
            androidx.compose.runtime.Trace r3 = androidx.compose.runtime.Trace.INSTANCE     // Catch: java.lang.Throwable -> La8
            r3.endSection(r8)     // Catch: java.lang.Throwable -> La8
            throw r0     // Catch: java.lang.Throwable -> La8
        Lb5:
            r0 = move-exception
            r17 = r3
        Lb8:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.deactivate():void");
    }

    public final int composerStacksSizes$runtime_release() {
        return this.composer.stacksSize$runtime_release();
    }

    /* JADX INFO: compiled from: Composition.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J(\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0006\u0010\u001a\u001a\u00020\u0013J\u0006\u0010\u001b\u001a\u00020\u0013J\u0006\u0010\u001c\u001a\u00020\u0013J(\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J(\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0002J(\u0010\r\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0016J\u0016\u0010 \u001a\u00020\u00132\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;", "Landroidx/compose/runtime/RememberManager;", "abandoning", "", "Landroidx/compose/runtime/RememberObserver;", "(Ljava/util/Set;)V", "afters", "Landroidx/collection/MutableIntList;", "leaving", "", "", "pending", "priorities", "releasing", "Landroidx/collection/MutableScatterSet;", "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;", "remembering", "sideEffects", "Lkotlin/Function0;", "", "deactivating", "instance", "endRelativeOrder", "", "priority", "endRelativeAfter", "dispatchAbandons", "dispatchRememberObservers", "dispatchSideEffects", "forgetting", "processPendingLeaving", "recordLeaving", "sideEffect", "effect", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class RememberEventDispatcher implements RememberManager {
        private final Set<RememberObserver> abandoning;
        private MutableScatterSet<ComposeNodeLifecycleCallback> releasing;
        private final List<RememberObserver> remembering = new ArrayList();
        private final List<Object> leaving = new ArrayList();
        private final List<Function0<Unit>> sideEffects = new ArrayList();
        private final List<Object> pending = new ArrayList();
        private final MutableIntList priorities = new MutableIntList(0, 1, null);
        private final MutableIntList afters = new MutableIntList(0, 1, null);

        public RememberEventDispatcher(Set<RememberObserver> set) {
            this.abandoning = set;
        }

        @Override // androidx.compose.runtime.RememberManager
        public void remembering(RememberObserver instance) {
            this.remembering.add(instance);
        }

        @Override // androidx.compose.runtime.RememberManager
        public void forgetting(RememberObserver instance, int endRelativeOrder, int priority, int endRelativeAfter) {
            recordLeaving(instance, endRelativeOrder, priority, endRelativeAfter);
        }

        @Override // androidx.compose.runtime.RememberManager
        public void sideEffect(Function0<Unit> effect) {
            this.sideEffects.add(effect);
        }

        @Override // androidx.compose.runtime.RememberManager
        public void deactivating(ComposeNodeLifecycleCallback instance, int endRelativeOrder, int priority, int endRelativeAfter) {
            recordLeaving(instance, endRelativeOrder, priority, endRelativeAfter);
        }

        @Override // androidx.compose.runtime.RememberManager
        public void releasing(ComposeNodeLifecycleCallback instance, int endRelativeOrder, int priority, int endRelativeAfter) {
            MutableScatterSet<ComposeNodeLifecycleCallback> mutableScatterSetMutableScatterSetOf = this.releasing;
            if (mutableScatterSetMutableScatterSetOf == null) {
                mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                this.releasing = mutableScatterSetMutableScatterSetOf;
            }
            mutableScatterSetMutableScatterSetOf.plusAssign(instance);
            recordLeaving(instance, endRelativeOrder, priority, endRelativeAfter);
        }

        public final void dispatchRememberObservers() {
            Object token$iv;
            processPendingLeaving(Integer.MIN_VALUE);
            if (!this.leaving.isEmpty()) {
                token$iv = Trace.INSTANCE.beginSection("Compose:onForgotten");
                try {
                    MutableScatterSet releasing = this.releasing;
                    for (int i = this.leaving.size() - 1; -1 < i; i--) {
                        Object instance = this.leaving.get(i);
                        if (instance instanceof RememberObserver) {
                            this.abandoning.remove(instance);
                            ((RememberObserver) instance).onForgotten();
                        }
                        if (instance instanceof ComposeNodeLifecycleCallback) {
                            if (releasing != null && releasing.contains(instance)) {
                                ((ComposeNodeLifecycleCallback) instance).onRelease();
                            } else {
                                ((ComposeNodeLifecycleCallback) instance).onDeactivate();
                            }
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                } finally {
                }
            }
            if (!this.remembering.isEmpty()) {
                token$iv = Trace.INSTANCE.beginSection("Compose:onRemembered");
                try {
                    List<RememberObserver> list = this.remembering;
                    int size = list.size();
                    for (int index$iv = 0; index$iv < size; index$iv++) {
                        Object item$iv = list.get(index$iv);
                        RememberObserver instance2 = (RememberObserver) item$iv;
                        this.abandoning.remove(instance2);
                        instance2.onRemembered();
                    }
                    Unit unit2 = Unit.INSTANCE;
                } finally {
                }
            }
        }

        public final void dispatchSideEffects() {
            if (!this.sideEffects.isEmpty()) {
                Object token$iv = Trace.INSTANCE.beginSection("Compose:sideeffects");
                try {
                    List<Function0<Unit>> list = this.sideEffects;
                    int size = list.size();
                    for (int index$iv = 0; index$iv < size; index$iv++) {
                        Object item$iv = list.get(index$iv);
                        ((Function0) item$iv).invoke();
                    }
                    this.sideEffects.clear();
                    Unit unit = Unit.INSTANCE;
                } finally {
                    Trace.INSTANCE.endSection(token$iv);
                }
            }
        }

        public final void dispatchAbandons() {
            if (!this.abandoning.isEmpty()) {
                Object token$iv = Trace.INSTANCE.beginSection("Compose:abandons");
                try {
                    Iterator<RememberObserver> it = this.abandoning.iterator();
                    while (it.hasNext()) {
                        RememberObserver instance = it.next();
                        it.remove();
                        instance.onAbandoned();
                    }
                    Unit unit = Unit.INSTANCE;
                } finally {
                    Trace.INSTANCE.endSection(token$iv);
                }
            }
        }

        private final void recordLeaving(Object instance, int endRelativeOrder, int priority, int endRelativeAfter) {
            processPendingLeaving(endRelativeOrder);
            boolean z = false;
            if (endRelativeAfter >= 0 && endRelativeAfter < endRelativeOrder) {
                z = true;
            }
            if (z) {
                this.pending.add(instance);
                this.priorities.add(priority);
                this.afters.add(endRelativeAfter);
                return;
            }
            this.leaving.add(instance);
        }

        private final void processPendingLeaving(int endRelativeOrder) {
            if (!this.pending.isEmpty()) {
                int index = 0;
                List toAdd = null;
                MutableIntList toAddAfter = null;
                MutableIntList toAddPriority = null;
                while (index < this.afters.getSize()) {
                    if (endRelativeOrder <= this.afters.get(index)) {
                        Object instance = this.pending.remove(index);
                        int endRelativeAfter = this.afters.removeAt(index);
                        int priority = this.priorities.removeAt(index);
                        if (toAdd == null) {
                            toAdd = CollectionsKt.mutableListOf(instance);
                            MutableIntList it = new MutableIntList(0, 1, null);
                            it.add(endRelativeAfter);
                            toAddAfter = it;
                            MutableIntList it2 = new MutableIntList(0, 1, null);
                            it2.add(priority);
                            toAddPriority = it2;
                        } else {
                            Intrinsics.checkNotNull(toAddPriority, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                            Intrinsics.checkNotNull(toAddAfter, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                            toAdd.add(instance);
                            toAddAfter.add(endRelativeAfter);
                            toAddPriority.add(priority);
                        }
                    } else {
                        index++;
                    }
                }
                if (toAdd != null) {
                    Intrinsics.checkNotNull(toAddPriority, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                    Intrinsics.checkNotNull(toAddAfter, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                    int size = toAdd.size() - 1;
                    for (int i = 0; i < size; i++) {
                        int size2 = toAdd.size();
                        for (int j = i + 1; j < size2; j++) {
                            int iAfter = toAddAfter.get(i);
                            int jAfter = toAddAfter.get(j);
                            if (iAfter < jAfter || (jAfter == iAfter && toAddPriority.get(i) < toAddPriority.get(j))) {
                                CompositionKt.swap(toAdd, i, j);
                                CompositionKt.swap(toAddPriority, i, j);
                                CompositionKt.swap(toAddAfter, i, j);
                            }
                        }
                    }
                    this.leaving.addAll(toAdd);
                }
            }
        }
    }
}

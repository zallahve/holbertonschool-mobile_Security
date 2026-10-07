package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;

/* JADX INFO: compiled from: HitPathTracker.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\nJ\u0006\u0010\u0018\u001a\u00020\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/input/pointer/HitPathTracker;", "", "rootCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "root", "Landroidx/compose/ui/input/pointer/NodeParent;", "getRoot$ui_release", "()Landroidx/compose/ui/input/pointer/NodeParent;", "addHitPath", "", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerInputNodes", "", "Landroidx/compose/ui/Modifier$Node;", "addHitPath-KNwqfcY", "(JLjava/util/List;)V", "dispatchChanges", "", "internalPointerEvent", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "isInBounds", "processCancel", "removeDetachedPointerInputFilters", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HitPathTracker {
    public static final int $stable = MutableVector.$stable;
    private final NodeParent root = new NodeParent();
    private final LayoutCoordinates rootCoordinates;

    public HitPathTracker(LayoutCoordinates rootCoordinates) {
        this.rootCoordinates = rootCoordinates;
    }

    /* JADX INFO: renamed from: getRoot$ui_release, reason: from getter */
    public final NodeParent getRoot() {
        return this.root;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /* JADX INFO: renamed from: addHitPath-KNwqfcY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4835addHitPathKNwqfcY(long r18, java.util.List<? extends androidx.compose.ui.Modifier.Node> r20) {
        /*
            r17 = this;
            r0 = r18
            r2 = r17
            androidx.compose.ui.input.pointer.NodeParent r3 = r2.root
            r4 = 1
            r5 = 0
            int r6 = r20.size()
        Lc:
            if (r5 >= r6) goto L78
            r7 = r20
            java.lang.Object r8 = r7.get(r5)
            androidx.compose.ui.Modifier$Node r8 = (androidx.compose.ui.Modifier.Node) r8
            if (r4 == 0) goto L59
            androidx.compose.runtime.collection.MutableVector r9 = r3.getChildren()
            r10 = 0
            int r11 = r9.getSize()
            if (r11 <= 0) goto L44
            r12 = 0
            java.lang.Object[] r13 = r9.getContent()
        L29:
            r14 = r13[r12]
            r15 = r14
            androidx.compose.ui.input.pointer.Node r15 = (androidx.compose.ui.input.pointer.Node) r15
            r16 = 0
            androidx.compose.ui.Modifier$Node r2 = r15.getPointerInputFilter()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r8)
            if (r2 == 0) goto L3b
            goto L45
        L3b:
            int r12 = r12 + 1
            if (r12 < r11) goto L41
            goto L44
        L41:
            r2 = r17
            goto L29
        L44:
            r14 = 0
        L45:
            r2 = r14
            androidx.compose.ui.input.pointer.Node r2 = (androidx.compose.ui.input.pointer.Node) r2
            if (r2 == 0) goto L58
            r2.markIsIn()
            androidx.compose.ui.input.pointer.util.PointerIdArray r9 = r2.getPointerIds()
            r9.m5000add0FcD4WY(r0)
            r3 = r2
            androidx.compose.ui.input.pointer.NodeParent r3 = (androidx.compose.ui.input.pointer.NodeParent) r3
            goto L73
        L58:
            r4 = 0
        L59:
            androidx.compose.ui.input.pointer.Node r2 = new androidx.compose.ui.input.pointer.Node
            r2.<init>(r8)
            r9 = r2
            r10 = 0
            androidx.compose.ui.input.pointer.util.PointerIdArray r11 = r9.getPointerIds()
            r11.m5000add0FcD4WY(r0)
            androidx.compose.runtime.collection.MutableVector r9 = r3.getChildren()
            r9.add(r2)
            r3 = r2
            androidx.compose.ui.input.pointer.NodeParent r3 = (androidx.compose.ui.input.pointer.NodeParent) r3
        L73:
            int r5 = r5 + 1
            r2 = r17
            goto Lc
        L78:
            r7 = r20
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.HitPathTracker.m4835addHitPathKNwqfcY(long, java.util.List):void");
    }

    public static /* synthetic */ boolean dispatchChanges$default(HitPathTracker hitPathTracker, InternalPointerEvent internalPointerEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return hitPathTracker.dispatchChanges(internalPointerEvent, z);
    }

    public final boolean dispatchChanges(InternalPointerEvent internalPointerEvent, boolean isInBounds) {
        boolean changed = this.root.buildCache(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, isInBounds);
        if (!changed) {
            return false;
        }
        boolean dispatchHit = this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, isInBounds);
        return this.root.dispatchFinalEventPass(internalPointerEvent) || dispatchHit;
    }

    public final void processCancel() {
        this.root.dispatchCancel();
        this.root.clear();
    }

    public final void removeDetachedPointerInputFilters() {
        this.root.removeDetachedPointerInputFilters();
    }
}

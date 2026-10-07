package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BeyondBoundsLayout.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aA\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0006¢\u0006\u0002\b\bH\u0000ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u000b"}, d2 = {"searchBeyondBounds", "T", "Landroidx/compose/ui/focus/FocusTargetNode;", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;", "Lkotlin/ExtensionFunctionType;", "searchBeyondBounds--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class BeyondBoundsLayoutKt {
    /* JADX INFO: renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final <T> T m3438searchBeyondBoundsOMvw8(FocusTargetNode focusTargetNode, int i, Function1<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> function1) {
        Modifier.Node node;
        int iM5019getBeforehoxUOeE;
        FocusTargetNode focusTargetNode2;
        int i2;
        int i3;
        FocusTargetNode focusTargetNode3;
        NodeChain nodes;
        int i4;
        int i5;
        FocusTargetNode focusTargetNode4;
        int i6;
        int i7;
        FocusTargetNode focusTargetNode5;
        int i8;
        MutableVector mutableVector;
        FocusTargetNode focusTargetNode6 = focusTargetNode;
        int iM5239constructorimpl = NodeKind.m5239constructorimpl(1024);
        int i9 = 0;
        FocusTargetNode focusTargetNode7 = focusTargetNode6;
        if (!focusTargetNode7.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = focusTargetNode7.getNode().getParent();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode7);
        loop0: while (true) {
            if (layoutNodeRequireLayoutNode == null) {
                node = null;
                break;
            }
            if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & iM5239constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & iM5239constructorimpl) != 0) {
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = parent;
                        while (nodePop != null) {
                            FocusTargetNode focusTargetNode8 = focusTargetNode6;
                            if (nodePop instanceof FocusTargetNode) {
                                node = nodePop;
                                break loop0;
                            }
                            if (((nodePop.getKindSet() & iM5239constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                i4 = iM5239constructorimpl;
                                i5 = i9;
                                focusTargetNode4 = focusTargetNode7;
                                nodePop = DelegatableNodeKt.pop(mutableVector2);
                                focusTargetNode6 = focusTargetNode8;
                                iM5239constructorimpl = i4;
                                i9 = i5;
                                focusTargetNode7 = focusTargetNode4;
                            } else {
                                int i10 = 0;
                                Modifier.Node delegate = ((DelegatingNode) nodePop).getDelegate();
                                while (delegate != null) {
                                    Modifier.Node node2 = delegate;
                                    if ((node2.getKindSet() & iM5239constructorimpl) != 0) {
                                        i10++;
                                        i6 = iM5239constructorimpl;
                                        if (i10 == 1) {
                                            nodePop = node2;
                                            i7 = i9;
                                            focusTargetNode5 = focusTargetNode7;
                                        } else {
                                            if (mutableVector2 == null) {
                                                i8 = i10;
                                                i7 = i9;
                                                focusTargetNode5 = focusTargetNode7;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i8 = i10;
                                                i7 = i9;
                                                focusTargetNode5 = focusTargetNode7;
                                                mutableVector = mutableVector2;
                                            }
                                            MutableVector mutableVector3 = mutableVector;
                                            Modifier.Node node3 = nodePop;
                                            if (node3 != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node3);
                                                }
                                                nodePop = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(node2);
                                            }
                                            mutableVector2 = mutableVector3;
                                            i10 = i8;
                                        }
                                    } else {
                                        i6 = iM5239constructorimpl;
                                        i7 = i9;
                                        focusTargetNode5 = focusTargetNode7;
                                    }
                                    delegate = delegate.getChild();
                                    iM5239constructorimpl = i6;
                                    i9 = i7;
                                    focusTargetNode7 = focusTargetNode5;
                                }
                                i4 = iM5239constructorimpl;
                                i5 = i9;
                                focusTargetNode4 = focusTargetNode7;
                                if (i10 == 1) {
                                    focusTargetNode6 = focusTargetNode8;
                                    iM5239constructorimpl = i4;
                                    i9 = i5;
                                    focusTargetNode7 = focusTargetNode4;
                                } else {
                                    nodePop = DelegatableNodeKt.pop(mutableVector2);
                                    focusTargetNode6 = focusTargetNode8;
                                    iM5239constructorimpl = i4;
                                    i9 = i5;
                                    focusTargetNode7 = focusTargetNode4;
                                }
                            }
                        }
                    }
                    parent = parent.getParent();
                    focusTargetNode6 = focusTargetNode6;
                    iM5239constructorimpl = iM5239constructorimpl;
                    i9 = i9;
                    focusTargetNode7 = focusTargetNode7;
                }
                focusTargetNode2 = focusTargetNode6;
                i2 = iM5239constructorimpl;
                i3 = i9;
                focusTargetNode3 = focusTargetNode7;
            } else {
                focusTargetNode2 = focusTargetNode6;
                i2 = iM5239constructorimpl;
                i3 = i9;
                focusTargetNode3 = focusTargetNode7;
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui_release();
            parent = (layoutNodeRequireLayoutNode == null || (nodes = layoutNodeRequireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
            focusTargetNode6 = focusTargetNode2;
            iM5239constructorimpl = i2;
            i9 = i3;
            focusTargetNode7 = focusTargetNode3;
        }
        FocusTargetNode focusTargetNode9 = (FocusTargetNode) node;
        if (focusTargetNode9 != null && Intrinsics.areEqual(focusTargetNode9.getBeyondBoundsLayoutParent(), focusTargetNode.getBeyondBoundsLayoutParent())) {
            return null;
        }
        T t = null;
        BeyondBoundsLayout beyondBoundsLayoutParent = focusTargetNode.getBeyondBoundsLayoutParent();
        if (beyondBoundsLayoutParent == null) {
            return t;
        }
        if (FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3455getUpdhqQ8s())) {
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5017getAbovehoxUOeE();
        } else if (FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3448getDowndhqQ8s())) {
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5020getBelowhoxUOeE();
        } else if (FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3451getLeftdhqQ8s())) {
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5021getLefthoxUOeE();
        } else if (FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3454getRightdhqQ8s())) {
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5022getRighthoxUOeE();
        } else if (FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3452getNextdhqQ8s())) {
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5018getAfterhoxUOeE();
        } else {
            if (!FocusDirection.m3442equalsimpl0(i, FocusDirection.INSTANCE.m3453getPreviousdhqQ8s())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout".toString());
            }
            iM5019getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m5019getBeforehoxUOeE();
        }
        return (T) beyondBoundsLayoutParent.mo722layouto7g1Pn8(iM5019getBeforehoxUOeE, function1);
    }
}

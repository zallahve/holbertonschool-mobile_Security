.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runRecomposeAndApplyChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1646:1\n89#2:1647\n89#2:1735\n33#3,6:1648\n33#3,6:1736\n267#4,4:1654\n237#4,7:1658\n248#4,3:1666\n251#4,2:1670\n272#4,2:1672\n254#4,6:1674\n274#4:1680\n267#4,4:1681\n237#4,7:1685\n248#4,3:1693\n251#4,2:1697\n272#4,2:1699\n254#4,6:1701\n274#4:1707\n267#4,4:1708\n237#4,7:1712\n248#4,3:1720\n251#4,2:1724\n272#4,2:1726\n254#4,6:1728\n274#4:1734\n1810#5:1665\n1672#5:1669\n1810#5:1692\n1672#5:1696\n1810#5:1719\n1672#5:1723\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n*L\n536#1:1647\n567#1:1735\n540#1:1648,6\n568#1:1736,6\n546#1:1654,4\n546#1:1658,7\n546#1:1666,3\n546#1:1670,2\n546#1:1672,2\n546#1:1674,6\n546#1:1680\n552#1:1681,4\n552#1:1685,7\n552#1:1693,3\n552#1:1697,2\n552#1:1699,2\n552#1:1701,6\n552#1:1707\n557#1:1708,4\n557#1:1712,7\n557#1:1720,3\n557#1:1724,2\n557#1:1726,2\n557#1:1728,6\n557#1:1734\n546#1:1665\n546#1:1669\n552#1:1692\n552#1:1696\n557#1:1719\n557#1:1723\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "parentFrameClock",
        "Landroidx/compose/runtime/MonotonicFrameClock;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2"
    f = "Recomposer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x23e,
        0x249
    }
    m = "invokeSuspend"
    n = {
        "parentFrameClock",
        "toRecompose",
        "toInsert",
        "toApply",
        "toLateApply",
        "toComplete",
        "modifiedValues",
        "modifiedValuesSet",
        "alreadyComposed",
        "parentFrameClock",
        "toRecompose",
        "toInsert",
        "toApply",
        "toLateApply",
        "toComplete",
        "modifiedValues",
        "modifiedValuesSet",
        "alreadyComposed"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    return-void
.end method

.method private static final invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    .locals 30
    .param p0, "this$0"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "toRecompose"    # Ljava/util/List;
    .param p2, "toInsert"    # Ljava/util/List;
    .param p3, "toApply"    # Ljava/util/List;
    .param p4, "toLateApply"    # Landroidx/collection/MutableScatterSet;
    .param p5, "toComplete"    # Landroidx/collection/MutableScatterSet;
    .param p6, "modifiedValues"    # Landroidx/collection/MutableScatterSet;
    .param p7, "alreadyComposed"    # Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;)V"
        }
    .end annotation

    .line 536
    move-object/from16 v1, p0

    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1647
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 537
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1":I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 538
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 540
    move-object/from16 v4, p3

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1648
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1649
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1650
    :try_start_1
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1651
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    .local v9, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v10, 0x0

    .line 541
    .local v10, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$1":I
    invoke-interface {v9}, Landroidx/compose/runtime/ControlledComposition;->abandonChanges()V

    .line 542
    invoke-static {v1, v9}, Landroidx/compose/runtime/Recomposer;->access$recordFailedCompositionLocked(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    nop

    .line 1651
    .end local v9    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v10    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$1":I
    nop

    .line 1649
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1647
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1":I
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .end local v6    # "index$iv":I
    :catchall_0
    move-exception v0

    move/from16 v23, v3

    goto/16 :goto_b

    .line 1653
    .restart local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1":I
    .restart local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    :cond_0
    nop

    .line 544
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    :try_start_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 546
    move-object/from16 v4, p4

    check-cast v4, Landroidx/collection/ScatterSet;

    .local v4, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v5, 0x0

    .line 1654
    .local v5, "$i$f$forEach":I
    nop

    .line 1655
    iget-object v6, v4, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1657
    .local v6, "k$iv":[Ljava/lang/Object;
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v8, 0x0

    .line 1658
    .local v8, "$i$f$forEachIndex":I
    nop

    .line 1659
    iget-object v9, v7, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1660
    .local v9, "m$iv$iv":[J
    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    .line 1662
    .local v10, "lastIndex$iv$iv":I
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    const-wide/16 v15, 0xff

    const/16 v17, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    const/16 v20, 0x1

    if-gt v11, v10, :cond_5

    .line 1663
    :goto_1
    aget-wide v21, v9, v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1664
    .local v21, "slot$iv$iv":J
    move-wide/from16 v23, v21

    .local v23, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v25, 0x0

    .line 1665
    .local v25, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v13, v23

    move/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v23, "$i$f$synchronized":I
    .local v24, "this_$iv":Landroidx/collection/ScatterSet;
    not-long v3, v13

    shl-long v3, v3, v17

    and-long/2addr v3, v13

    and-long v3, v3, v18

    .line 1664
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v25    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v18

    if-eqz v3, :cond_4

    .line 1666
    sub-int v3, v11, v10

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v3, v3, 0x8

    .line 1667
    .local v3, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 1668
    and-long v13, v21, v15

    .local v13, "value$iv$iv$iv":J
    const/16 v25, 0x0

    .line 1669
    .local v25, "$i$f$isFull":I
    const-wide/16 v26, 0x80

    cmp-long v28, v13, v26

    if-gez v28, :cond_1

    move/from16 v13, v20

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    .line 1668
    .end local v13    # "value$iv$iv$iv":J
    .end local v25    # "$i$f$isFull":I
    :goto_3
    if-eqz v13, :cond_2

    .line 1670
    shl-int/lit8 v13, v11, 0x3

    add-int/2addr v13, v4

    .line 1671
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v25, 0x0

    .line 1672
    .local v25, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    :try_start_3
    aget-object v28, v6, v14

    check-cast v28, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v29, v28

    .local v29, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v28, 0x0

    .line 547
    .local v28, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$2":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/ControlledComposition;->abandonChanges()V

    .line 548
    move-object/from16 v15, v29

    .end local v29    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v15, "it":Landroidx/compose/runtime/ControlledComposition;
    invoke-static {v1, v15}, Landroidx/compose/runtime/Recomposer;->access$recordFailedCompositionLocked(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 549
    nop

    .line 1672
    .end local v15    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v28    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$2":I
    nop

    .line 1673
    nop

    .line 1671
    .end local v14    # "index$iv":I
    .end local v25    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    nop

    .line 1674
    .end local v13    # "index$iv$iv":I
    :cond_2
    shr-long v21, v21, v12

    .line 1667
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v15, 0xff

    goto :goto_2

    .line 1676
    .end local v4    # "j$iv$iv":I
    :cond_3
    if-ne v3, v12, :cond_7

    .line 1662
    .end local v3    # "bitCount$iv$iv":I
    .end local v21    # "slot$iv$iv":J
    :cond_4
    if-eq v11, v10, :cond_6

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v23

    move-object/from16 v4, v24

    const-wide/16 v15, 0xff

    goto :goto_1

    .end local v23    # "$i$f$synchronized":I
    .end local v24    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v3, "$i$f$synchronized":I
    .local v4, "this_$iv":Landroidx/collection/ScatterSet;
    :cond_5
    move/from16 v23, v3

    move-object/from16 v24, v4

    .line 1679
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v11    # "i$iv$iv":I
    .restart local v23    # "$i$f$synchronized":I
    .restart local v24    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_6
    nop

    .line 1680
    .end local v7    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEachIndex":I
    .end local v9    # "m$iv$iv":[J
    .end local v10    # "lastIndex$iv$iv":I
    :cond_7
    nop

    .line 550
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[Ljava/lang/Object;
    .end local v24    # "this_$iv":Landroidx/collection/ScatterSet;
    invoke-virtual/range {p4 .. p4}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 552
    move-object/from16 v3, p5

    check-cast v3, Landroidx/collection/ScatterSet;

    .local v3, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v4, 0x0

    .line 1681
    .local v4, "$i$f$forEach":I
    nop

    .line 1682
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1684
    .local v5, "k$iv":[Ljava/lang/Object;
    move-object v6, v3

    .local v6, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v7, 0x0

    .line 1685
    .local v7, "$i$f$forEachIndex":I
    nop

    .line 1686
    iget-object v8, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1687
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 1689
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_c

    .line 1690
    :goto_4
    aget-wide v13, v8, v10

    .line 1691
    .local v13, "slot$iv$iv":J
    move-wide v15, v13

    .local v15, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v11, 0x0

    .line 1692
    .local v11, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v24, v13

    move-wide v12, v15

    .end local v13    # "slot$iv$iv":J
    .end local v15    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v24, "slot$iv$iv":J
    not-long v14, v12

    shl-long v14, v14, v17

    and-long/2addr v14, v12

    and-long v11, v14, v18

    .line 1691
    .end local v11    # "$i$f$maskEmptyOrDeleted":I
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    cmp-long v11, v11, v18

    if-eqz v11, :cond_b

    .line 1693
    sub-int v11, v10, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1694
    .local v11, "bitCount$iv$iv":I
    const/4 v12, 0x0

    move-wide/from16 v13, v24

    .end local v24    # "slot$iv$iv":J
    .local v12, "j$iv$iv":I
    .restart local v13    # "slot$iv$iv":J
    :goto_5
    if-ge v12, v11, :cond_a

    .line 1695
    const-wide/16 v15, 0xff

    and-long v24, v13, v15

    .local v24, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1696
    .local v15, "$i$f$isFull":I
    const-wide/16 v26, 0x80

    cmp-long v16, v24, v26

    if-gez v16, :cond_8

    move/from16 v15, v20

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    .line 1695
    .end local v15    # "$i$f$isFull":I
    .end local v24    # "value$iv$iv$iv":J
    :goto_6
    if-eqz v15, :cond_9

    .line 1697
    shl-int/lit8 v15, v10, 0x3

    add-int/2addr v15, v12

    .line 1698
    .local v15, "index$iv$iv":I
    move/from16 v16, v15

    .local v16, "index$iv":I
    const/16 v22, 0x0

    .line 1699
    .local v22, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v24, v5, v16

    check-cast v24, Landroidx/compose/runtime/ControlledComposition;

    .local v24, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v25, 0x0

    .line 552
    .local v25, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$3":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V

    .line 1699
    .end local v24    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v25    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$3":I
    nop

    .line 1700
    nop

    .line 1698
    .end local v16    # "index$iv":I
    .end local v22    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    nop

    .line 1701
    .end local v15    # "index$iv$iv":I
    :cond_9
    const/16 v15, 0x8

    shr-long/2addr v13, v15

    .line 1694
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    const/16 v15, 0x8

    .line 1703
    .end local v12    # "j$iv$iv":I
    if-ne v11, v15, :cond_d

    .line 1689
    .end local v11    # "bitCount$iv$iv":I
    .end local v13    # "slot$iv$iv":J
    :cond_b
    if-eq v10, v9, :cond_c

    add-int/lit8 v10, v10, 0x1

    const/16 v12, 0x8

    goto :goto_4

    .line 1706
    .end local v10    # "i$iv$iv":I
    :cond_c
    nop

    .line 1707
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "$i$f$forEachIndex":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_d
    nop

    .line 553
    .end local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    invoke-virtual/range {p5 .. p5}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 555
    invoke-virtual/range {p6 .. p6}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 557
    move-object/from16 v3, p7

    check-cast v3, Landroidx/collection/ScatterSet;

    .restart local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v4, 0x0

    .line 1708
    .restart local v4    # "$i$f$forEach":I
    nop

    .line 1709
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1711
    .restart local v5    # "k$iv":[Ljava/lang/Object;
    move-object v6, v3

    .restart local v6    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v7, 0x0

    .line 1712
    .restart local v7    # "$i$f$forEachIndex":I
    nop

    .line 1713
    iget-object v8, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1714
    .restart local v8    # "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 1716
    .restart local v9    # "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .restart local v10    # "i$iv$iv":I
    if-gt v10, v9, :cond_12

    .line 1717
    :goto_7
    aget-wide v11, v8, v10

    .line 1718
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1719
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v16, v3

    move/from16 v22, v4

    .end local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEach":I
    .local v16, "this_$iv":Landroidx/collection/ScatterSet;
    .local v22, "$i$f$forEach":I
    not-long v3, v13

    shl-long v3, v3, v17

    and-long/2addr v3, v13

    and-long v3, v3, v18

    .line 1718
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v18

    if-eqz v3, :cond_11

    .line 1720
    sub-int v3, v10, v9

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 1721
    .local v3, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_8
    if-ge v4, v3, :cond_10

    .line 1722
    const-wide/16 v13, 0xff

    and-long v24, v11, v13

    .local v24, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1723
    .local v15, "$i$f$isFull":I
    const-wide/16 v26, 0x80

    cmp-long v28, v24, v26

    if-gez v28, :cond_e

    move/from16 v15, v20

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    .line 1722
    .end local v15    # "$i$f$isFull":I
    .end local v24    # "value$iv$iv$iv":J
    :goto_9
    if-eqz v15, :cond_f

    .line 1724
    shl-int/lit8 v15, v10, 0x3

    add-int/2addr v15, v4

    .line 1725
    .local v15, "index$iv$iv":I
    move/from16 v24, v15

    .local v24, "index$iv":I
    const/16 v25, 0x0

    .line 1726
    .local v25, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    aget-object v28, v5, v24

    check-cast v28, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v29, v28

    .restart local v29    # "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v28, 0x0

    .line 558
    .local v28, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$4":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/ControlledComposition;->abandonChanges()V

    .line 559
    move-object/from16 v13, v29

    .end local v29    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v13, "it":Landroidx/compose/runtime/ControlledComposition;
    invoke-static {v1, v13}, Landroidx/compose/runtime/Recomposer;->access$recordFailedCompositionLocked(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 560
    nop

    .line 1726
    .end local v13    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v28    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1$4":I
    nop

    .line 1727
    nop

    .line 1725
    .end local v24    # "index$iv":I
    .end local v25    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    nop

    .line 1728
    .end local v15    # "index$iv$iv":I
    :cond_f
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    .line 1721
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    const/16 v13, 0x8

    const-wide/16 v26, 0x80

    .line 1730
    .end local v4    # "j$iv$iv":I
    if-ne v3, v13, :cond_14

    goto :goto_a

    .line 1718
    .end local v3    # "bitCount$iv$iv":I
    :cond_11
    const/16 v13, 0x8

    const-wide/16 v26, 0x80

    .line 1716
    .end local v11    # "slot$iv$iv":J
    :goto_a
    if-eq v10, v9, :cond_13

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v22

    goto :goto_7

    .end local v16    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v22    # "$i$f$forEach":I
    .local v3, "this_$iv":Landroidx/collection/ScatterSet;
    .local v4, "$i$f$forEach":I
    :cond_12
    move-object/from16 v16, v3

    move/from16 v22, v4

    .line 1733
    .end local v3    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "$i$f$forEach":I
    .end local v10    # "i$iv$iv":I
    .restart local v16    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v22    # "$i$f$forEach":I
    :cond_13
    nop

    .line 1734
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "$i$f$forEachIndex":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_14
    nop

    .line 561
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v16    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v22    # "$i$f$forEach":I
    invoke-virtual/range {p7 .. p7}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 562
    nop

    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$clearRecompositionState$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1647
    monitor-exit v2

    .line 563
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    return-void

    .line 1647
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    goto :goto_b

    .end local v23    # "$i$f$synchronized":I
    .local v3, "$i$f$synchronized":I
    :catchall_2
    move-exception v0

    move/from16 v23, v3

    .end local v3    # "$i$f$synchronized":I
    .restart local v23    # "$i$f$synchronized":I
    :goto_b
    monitor-exit v2

    throw v0
.end method

.method private static final invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 11
    .param p0, "toInsert"    # Ljava/util/List;
    .param p1, "this$0"    # Landroidx/compose/runtime/Recomposer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            ")V"
        }
    .end annotation

    .line 566
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 567
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1735
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 568
    .local v2, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$fillToInsert$1":I
    :try_start_0
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->access$getCompositionValuesAwaitingInsert$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1736
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1737
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 1738
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1739
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/MovableContentStateReference;

    .local v8, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/4 v9, 0x0

    .line 568
    .local v9, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$fillToInsert$1$1":I
    move-object v10, p0

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1739
    .end local v8    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v9    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$fillToInsert$1$1":I
    nop

    .line 1737
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1741
    .end local v5    # "index$iv":I
    :cond_0
    nop

    .line 569
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->access$getCompositionValuesAwaitingInsert$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 570
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$fillToInsert$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    monitor-exit v0

    .line 571
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1735
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 525
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableScatterSet;

    .local v5, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    iget-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    .local v6, "modifiedValuesSet":Ljava/util/Set;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Ljava/lang/Object;

    check-cast v7, Landroidx/collection/MutableScatterSet;

    .local v7, "modifiedValues":Landroidx/collection/MutableScatterSet;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    check-cast v8, Landroidx/collection/MutableScatterSet;

    .local v8, "toComplete":Landroidx/collection/MutableScatterSet;
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    check-cast v9, Landroidx/collection/MutableScatterSet;

    .local v9, "toLateApply":Landroidx/collection/MutableScatterSet;
    iget-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .local v10, "toApply":Ljava/util/List;
    iget-object v11, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "toInsert":Ljava/util/List;
    iget-object v12, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .local v12, "toRecompose":Ljava/util/List;
    iget-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/runtime/MonotonicFrameClock;

    .local v13, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v13

    move-object v13, v5

    move-object/from16 v5, v22

    move-object/from16 v23, v12

    move-object v12, v6

    move-object/from16 v6, v23

    move-object/from16 v24, v11

    move-object v11, v7

    move-object/from16 v7, v24

    move-object/from16 v25, v10

    move-object v10, v8

    move-object/from16 v8, v25

    goto/16 :goto_2

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .end local v6    # "modifiedValuesSet":Ljava/util/Set;
    .end local v7    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .end local v8    # "toComplete":Landroidx/collection/MutableScatterSet;
    .end local v9    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .end local v10    # "toApply":Ljava/util/List;
    .end local v11    # "toInsert":Ljava/util/List;
    .end local v12    # "toRecompose":Ljava/util/List;
    .end local v13    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableScatterSet;

    .restart local v5    # "alreadyComposed":Landroidx/collection/MutableScatterSet;
    iget-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    .restart local v6    # "modifiedValuesSet":Ljava/util/Set;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Ljava/lang/Object;

    check-cast v7, Landroidx/collection/MutableScatterSet;

    .restart local v7    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    check-cast v8, Landroidx/collection/MutableScatterSet;

    .restart local v8    # "toComplete":Landroidx/collection/MutableScatterSet;
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    check-cast v9, Landroidx/collection/MutableScatterSet;

    .restart local v9    # "toLateApply":Landroidx/collection/MutableScatterSet;
    iget-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .restart local v10    # "toApply":Ljava/util/List;
    iget-object v11, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .restart local v11    # "toInsert":Ljava/util/List;
    iget-object v12, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .restart local v12    # "toRecompose":Ljava/util/List;
    iget-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/runtime/MonotonicFrameClock;

    .restart local v13    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v11

    move-object v15, v12

    move-object v11, v8

    move-object v12, v10

    move-object v8, v5

    move-object v10, v7

    move-object v5, v13

    move-object v13, v9

    move-object v9, v6

    goto/16 :goto_1

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .end local v6    # "modifiedValuesSet":Ljava/util/Set;
    .end local v7    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .end local v8    # "toComplete":Landroidx/collection/MutableScatterSet;
    .end local v9    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .end local v10    # "toApply":Ljava/util/List;
    .end local v11    # "toInsert":Ljava/util/List;
    .end local v12    # "toRecompose":Ljava/util/List;
    .end local v13    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 526
    .local v5, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 527
    .local v6, "toRecompose":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 528
    .local v7, "toInsert":Ljava/util/List;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 529
    .local v8, "toApply":Ljava/util/List;
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v9

    .line 530
    .restart local v9    # "toLateApply":Landroidx/collection/MutableScatterSet;
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v10

    .line 531
    .local v10, "toComplete":Landroidx/collection/MutableScatterSet;
    new-instance v11, Landroidx/collection/MutableScatterSet;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v3, v13}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 532
    .local v11, "modifiedValues":Landroidx/collection/MutableScatterSet;
    move-object v12, v11

    check-cast v12, Landroidx/collection/ScatterSet;

    invoke-static {v12}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v12

    .line 533
    .local v12, "modifiedValuesSet":Ljava/util/Set;
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v13

    .line 573
    .local v13, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    :goto_0
    iget-object v14, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 574
    iget-object v14, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Ljava/lang/Object;

    iput v3, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    invoke-static {v14, v15}, Landroidx/compose/runtime/Recomposer;->access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_0

    .line 525
    return-object v0

    .line 574
    :cond_0
    move-object v15, v6

    move-object v14, v7

    move-object/from16 v22, v12

    move-object v12, v8

    move-object v8, v13

    move-object v13, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    .line 577
    .end local v6    # "toRecompose":Ljava/util/List;
    .end local v7    # "toInsert":Ljava/util/List;
    .local v8, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .local v9, "modifiedValuesSet":Ljava/util/Set;
    .local v10, "modifiedValues":Landroidx/collection/MutableScatterSet;
    .local v11, "toComplete":Landroidx/collection/MutableScatterSet;
    .local v12, "toApply":Ljava/util/List;
    .local v13, "toLateApply":Landroidx/collection/MutableScatterSet;
    .local v14, "toInsert":Ljava/util/List;
    .local v15, "toRecompose":Ljava/util/List;
    :goto_1
    iget-object v6, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 585
    new-instance v16, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;

    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    move-object/from16 v6, v16

    move-object/from16 p1, v8

    .end local v8    # "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .local p1, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    move-object v8, v10

    move-object/from16 v17, v9

    .end local v9    # "modifiedValuesSet":Ljava/util/Set;
    .local v17, "modifiedValuesSet":Ljava/util/Set;
    move-object/from16 v9, p1

    move-object v3, v10

    .end local v10    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .local v3, "modifiedValues":Landroidx/collection/MutableScatterSet;
    move-object v10, v15

    move-object/from16 v18, v11

    .end local v11    # "toComplete":Landroidx/collection/MutableScatterSet;
    .local v18, "toComplete":Landroidx/collection/MutableScatterSet;
    move-object v11, v14

    move-object/from16 v19, v12

    .end local v12    # "toApply":Ljava/util/List;
    .local v19, "toApply":Ljava/util/List;
    move-object v12, v13

    move-object v1, v13

    .end local v13    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .local v1, "toLateApply":Landroidx/collection/MutableScatterSet;
    move-object/from16 v13, v19

    move-object/from16 v20, v4

    move-object v4, v14

    .end local v14    # "toInsert":Ljava/util/List;
    .local v4, "toInsert":Ljava/util/List;
    .local v20, "$result":Ljava/lang/Object;
    move-object/from16 v14, v18

    move-object/from16 v21, v0

    move-object v0, v15

    .end local v15    # "toRecompose":Ljava/util/List;
    .local v0, "toRecompose":Ljava/util/List;
    move-object/from16 v15, v17

    invoke-direct/range {v6 .. v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V

    move-object/from16 v6, v16

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    move-object/from16 v8, v19

    .end local v19    # "toApply":Ljava/util/List;
    .local v8, "toApply":Ljava/util/List;
    iput-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    move-object/from16 v10, v18

    .end local v18    # "toComplete":Landroidx/collection/MutableScatterSet;
    .local v10, "toComplete":Landroidx/collection/MutableScatterSet;
    iput-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$6:Ljava/lang/Object;

    move-object/from16 v12, v17

    .end local v17    # "modifiedValuesSet":Ljava/util/Set;
    .local v12, "modifiedValuesSet":Ljava/util/Set;
    iput-object v12, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$7:Ljava/lang/Object;

    move-object/from16 v13, p1

    .end local p1    # "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .local v13, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    iput-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$8:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v21

    if-ne v6, v7, :cond_1

    .line 525
    return-object v7

    .line 585
    :cond_1
    move-object v6, v0

    move-object v9, v1

    move-object v11, v3

    move-object v0, v7

    move-object v7, v4

    move-object/from16 v4, v20

    .line 741
    .end local v0    # "toRecompose":Ljava/util/List;
    .end local v1    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .end local v3    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .end local v20    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v6    # "toRecompose":Ljava/util/List;
    .restart local v7    # "toInsert":Ljava/util/List;
    .local v9, "toLateApply":Landroidx/collection/MutableScatterSet;
    .local v11, "modifiedValues":Landroidx/collection/MutableScatterSet;
    :goto_2
    iget-object v1, v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$discardUnusedValues(Landroidx/compose/runtime/Recomposer;)V

    move-object/from16 v1, p0

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 577
    .end local v6    # "toRecompose":Ljava/util/List;
    .end local v7    # "toInsert":Ljava/util/List;
    .local v8, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .local v9, "modifiedValuesSet":Ljava/util/Set;
    .local v10, "modifiedValues":Landroidx/collection/MutableScatterSet;
    .local v11, "toComplete":Landroidx/collection/MutableScatterSet;
    .local v12, "toApply":Ljava/util/List;
    .local v13, "toLateApply":Landroidx/collection/MutableScatterSet;
    .restart local v14    # "toInsert":Ljava/util/List;
    .restart local v15    # "toRecompose":Ljava/util/List;
    :cond_2
    move-object v7, v0

    move-object/from16 v20, v4

    move-object v3, v10

    move-object v10, v11

    move-object v1, v13

    move-object v4, v14

    move-object v0, v15

    move-object v13, v8

    move-object v8, v12

    move-object v12, v9

    .end local v9    # "modifiedValuesSet":Ljava/util/Set;
    .end local v11    # "toComplete":Landroidx/collection/MutableScatterSet;
    .end local v14    # "toInsert":Ljava/util/List;
    .end local v15    # "toRecompose":Ljava/util/List;
    .restart local v0    # "toRecompose":Ljava/util/List;
    .restart local v1    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .restart local v3    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .local v4, "toInsert":Ljava/util/List;
    .local v8, "toApply":Ljava/util/List;
    .local v10, "toComplete":Landroidx/collection/MutableScatterSet;
    .local v12, "modifiedValuesSet":Ljava/util/Set;
    .local v13, "alreadyComposed":Landroidx/collection/MutableScatterSet;
    .restart local v20    # "$result":Ljava/lang/Object;
    move-object v6, v0

    move-object v9, v1

    move-object v11, v3

    move-object v0, v7

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object v7, v4

    move-object/from16 v4, v20

    goto/16 :goto_0

    .line 743
    .end local v0    # "toRecompose":Ljava/util/List;
    .end local v1    # "toLateApply":Landroidx/collection/MutableScatterSet;
    .end local v3    # "modifiedValues":Landroidx/collection/MutableScatterSet;
    .end local v20    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v6    # "toRecompose":Ljava/util/List;
    .restart local v7    # "toInsert":Ljava/util/List;
    .local v9, "toLateApply":Landroidx/collection/MutableScatterSet;
    .local v11, "modifiedValues":Landroidx/collection/MutableScatterSet;
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

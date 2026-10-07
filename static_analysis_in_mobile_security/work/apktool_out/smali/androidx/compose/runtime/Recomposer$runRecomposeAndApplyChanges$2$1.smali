.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1646:1\n46#2,5:1647\n46#2,3:1652\n50#2:1673\n89#3:1655\n89#3:1674\n89#3:1762\n460#4,11:1656\n838#4,15:1681\n33#5,6:1667\n33#5,6:1675\n33#5,6:1696\n33#5,6:1702\n267#6,4:1708\n237#6,7:1712\n248#6,3:1720\n251#6,2:1724\n272#6,2:1726\n254#6,6:1728\n274#6:1734\n267#6,4:1735\n237#6,7:1739\n248#6,3:1747\n251#6,2:1751\n272#6,2:1753\n254#6,6:1755\n274#6:1761\n1810#7:1719\n1672#7:1723\n1810#7:1746\n1672#7:1750\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n*L\n589#1:1647,5\n599#1:1652,3\n599#1:1673\n603#1:1655\n634#1:1674\n725#1:1762\n604#1:1656,11\n647#1:1681,15\n615#1:1667,6\n635#1:1675,6\n681#1:1696,6\n684#1:1702,6\n699#1:1708,4\n699#1:1712,7\n699#1:1720,3\n699#1:1724,2\n699#1:1726,2\n699#1:1728,6\n699#1:1734\n713#1:1735,4\n713#1:1739,7\n713#1:1747,3\n713#1:1751,2\n713#1:1753,2\n713#1:1755,6\n713#1:1761\n699#1:1719\n699#1:1723\n713#1:1746\n713#1:1750\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "frameTime",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 585
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(J)V
    .locals 39
    .param p1, "frameTime"    # J

    .line 588
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v2, "Recomposer:animation"

    .local v2, "sectionName$iv":Ljava/lang/String;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v3, 0x0

    .line 1647
    .local v3, "$i$f$trace":I
    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1648
    .local v4, "token$iv":Ljava/lang/Object;
    nop

    .line 1649
    const/4 v5, 0x0

    .line 592
    .local v5, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v6, p1

    :try_start_1
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 595
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 596
    nop

    .end local v5    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1649
    nop

    .line 1651
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1649
    nop

    .line 1651
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "token$iv":Ljava/lang/Object;
    goto :goto_1

    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "token$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v6, p1

    :goto_0
    sget-object v5, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 588
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "token$iv":Ljava/lang/Object;
    :cond_0
    move-wide/from16 v6, p1

    .line 599
    :goto_1
    const-string v2, "Recomposer:recompose"

    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v15, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v14, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v13, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v12, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v11, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/16 v18, 0x0

    .line 1652
    .local v18, "$i$f$trace":I
    sget-object v8, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1653
    .local v10, "token$iv":Ljava/lang/Object;
    nop

    .line 1654
    const/16 v19, 0x0

    .line 602
    .local v19, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :try_start_2
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 603
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1655
    .local v9, "$i$f$synchronized":I
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1b

    const/16 v16, 0x0

    .line 604
    .local v16, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :try_start_3
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v17

    .local v17, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v20, 0x0

    .line 1656
    .local v20, "$i$f$forEach":I
    nop

    .line 1657
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    move/from16 v22, v21

    .line 1658
    .local v22, "size$iv":I
    move/from16 v1, v22

    .end local v22    # "size$iv":I
    .local v1, "size$iv":I
    if-lez v1, :cond_2

    .line 1659
    const/16 v21, 0x0

    .line 1660
    .local v21, "i$iv":I
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v22

    .line 1662
    .local v22, "content$iv":[Ljava/lang/Object;
    :goto_2
    aget-object v23, v22, v21

    check-cast v23, Landroidx/compose/runtime/ControlledComposition;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v24, v23

    .local v24, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v23, 0x0

    .line 605
    .local v23, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    move-object/from16 v25, v2

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .local v25, "sectionName$iv":Ljava/lang/String;
    :try_start_5
    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v6, v24

    .end local v24    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v6, "it":Landroidx/compose/runtime/ControlledComposition;
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 606
    nop

    .line 1662
    .end local v6    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v23    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    nop

    .line 1663
    add-int/lit8 v2, v21, 0x1

    .line 1664
    .end local v21    # "i$iv":I
    .local v2, "i$iv":I
    if-lt v2, v1, :cond_1

    goto :goto_3

    :cond_1
    move-wide/from16 v6, p1

    move/from16 v21, v2

    move-object/from16 v2, v25

    goto :goto_2

    .line 1655
    .end local v1    # "size$iv":I
    .end local v2    # "i$iv":I
    .end local v16    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    .end local v17    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v20    # "$i$f$forEach":I
    .end local v22    # "content$iv":[Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v4, v10

    goto/16 :goto_28

    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v25, v2

    move-object v4, v10

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_28

    .line 1658
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "size$iv":I
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v16    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    .restart local v17    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v20    # "$i$f$forEach":I
    :cond_2
    move-object/from16 v25, v2

    .line 1666
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_3
    nop

    .line 607
    .end local v1    # "size$iv":I
    .end local v17    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v20    # "$i$f$forEach":I
    :try_start_6
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 608
    nop

    .end local v16    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_18

    .line 1655
    :try_start_7
    monitor-exit v8

    .line 611
    .end local v8    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 612
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 613
    :goto_4
    move-object v1, v15

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v14

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object v4, v10

    move-object v1, v11

    move-object v6, v12

    move-object v2, v13

    goto/16 :goto_18

    .line 673
    :cond_3
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_17

    if-nez v0, :cond_6

    .line 674
    :try_start_8
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v0

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 677
    nop

    .line 681
    move-object v0, v12

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1696
    .local v1, "$i$f$fastForEach":I
    nop

    .line 1697
    const/4 v8, 0x0

    .local v8, "index$iv":I
    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v8, v9, :cond_4

    .line 1698
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1699
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v20, v17

    .local v20, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v17, 0x0

    .line 682
    .local v17, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    move-object/from16 v6, v20

    .end local v20    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v6, "composition":Landroidx/compose/runtime/ControlledComposition;
    invoke-virtual {v11, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 683
    nop

    .line 1699
    .end local v6    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v17    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    nop

    .line 1697
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1701
    .end local v8    # "index$iv":I
    :cond_4
    nop

    .line 684
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    move-object v0, v12

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1702
    .restart local v1    # "$i$f$fastForEach":I
    nop

    .line 1703
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    :goto_6
    if-ge v6, v8, :cond_5

    .line 1704
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1705
    .local v9, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/runtime/ControlledComposition;

    .local v16, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v17, 0x0

    .line 685
    .local v17, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 686
    nop

    .line 1705
    .end local v16    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v17    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    nop

    .line 1703
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1707
    .end local v6    # "index$iv":I
    :cond_5
    nop

    .line 692
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    :try_start_a
    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 693
    move-object v1, v11

    move-object v6, v12

    move-object/from16 v20, v13

    move-object v13, v10

    goto/16 :goto_8

    .line 1673
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_4
    move-exception v0

    move-object v4, v10

    goto/16 :goto_29

    .line 692
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_5
    move-exception v0

    move-object v7, v10

    move-object v6, v12

    goto :goto_7

    .line 687
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 688
    .local v9, "e":Ljava/lang/Exception;
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v8, v3

    move-object v7, v10

    .end local v10    # "token$iv":Ljava/lang/Object;
    .local v7, "token$iv":Ljava/lang/Object;
    move-object v10, v2

    move-object v2, v11

    move v11, v6

    move-object v6, v12

    move v12, v0

    move-object/from16 v20, v13

    move-object v13, v1

    :try_start_b
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 689
    move-object v10, v3

    move-object v11, v15

    move-object v12, v14

    move-object v13, v6

    move-object/from16 v14, v20

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v17}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 690
    nop

    .line 692
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 690
    .end local v7    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 692
    .restart local v7    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    :goto_7
    :try_start_d
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .end local v7    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1673
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v7    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_7
    move-exception v0

    move-object v4, v7

    goto/16 :goto_29

    .end local v7    # "token$iv":Ljava/lang/Object;
    .restart local v10    # "token$iv":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    move-object v7, v10

    move-object v4, v7

    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v7    # "token$iv":Ljava/lang/Object;
    goto/16 :goto_29

    .line 673
    .end local v7    # "token$iv":Ljava/lang/Object;
    .restart local v10    # "token$iv":Ljava/lang/Object;
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :cond_6
    move-object v1, v11

    move-object v6, v12

    move-object/from16 v20, v13

    move-object v13, v10

    .line 696
    .end local v10    # "token$iv":Ljava/lang/Object;
    .local v13, "token$iv":Ljava/lang/Object;
    :goto_8
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    const/4 v12, 0x7

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_e

    .line 697
    nop

    .line 698
    move-object/from16 v2, v20

    :try_start_f
    move-object v0, v2

    check-cast v0, Landroidx/collection/ScatterSet;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 699
    move-object v0, v2

    check-cast v0, Landroidx/collection/ScatterSet;

    .local v0, "this_$iv":Landroidx/collection/ScatterSet;
    const/16 v20, 0x0

    .line 1708
    .local v20, "$i$f$forEach":I
    nop

    .line 1709
    iget-object v8, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1711
    .local v8, "k$iv":[Ljava/lang/Object;
    move-object v9, v0

    .local v9, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v24, 0x0

    .line 1712
    .local v24, "$i$f$forEachIndex":I
    nop

    .line 1713
    iget-object v10, v9, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1714
    .local v10, "m$iv$iv":[J
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 1716
    .local v11, "lastIndex$iv$iv":I
    const/4 v7, 0x0

    .local v7, "i$iv$iv":I
    if-gt v7, v11, :cond_b

    .line 1717
    :goto_9
    aget-wide v30, v10, v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 1718
    .local v30, "slot$iv$iv":J
    move-wide/from16 v32, v30

    .local v32, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v34, 0x0

    .line 1719
    .local v34, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-wide/from16 v9, v32

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    .end local v10    # "m$iv$iv":[J
    .end local v32    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v9, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v35, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v36, "m$iv$iv":[J
    not-long v4, v9

    shl-long/2addr v4, v12

    and-long/2addr v4, v9

    and-long v4, v4, v16

    .line 1718
    .end local v9    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v34    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v16

    if-eqz v4, :cond_a

    .line 1720
    sub-int v4, v7, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 1721
    .local v4, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_a
    if-ge v5, v4, :cond_9

    .line 1722
    const-wide/16 v9, 0xff

    and-long v37, v30, v9

    .local v37, "value$iv$iv$iv":J
    const/4 v9, 0x0

    .line 1723
    .local v9, "$i$f$isFull":I
    const-wide/16 v26, 0x80

    cmp-long v10, v37, v26

    if-gez v10, :cond_7

    const/4 v9, 0x1

    goto :goto_b

    :cond_7
    const/4 v9, 0x0

    .line 1722
    .end local v9    # "$i$f$isFull":I
    .end local v37    # "value$iv$iv$iv":J
    :goto_b
    if-eqz v9, :cond_8

    .line 1724
    shl-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v5

    .line 1725
    .local v9, "index$iv$iv":I
    move v10, v9

    .local v10, "index$iv":I
    const/16 v34, 0x0

    .line 1726
    .local v34, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    :try_start_10
    aget-object v37, v8, v10

    check-cast v37, Landroidx/compose/runtime/ControlledComposition;

    .local v37, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v38, 0x0

    .line 700
    .local v38, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 701
    nop

    .line 1726
    .end local v37    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v38    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    nop

    .line 1727
    nop

    .line 1725
    .end local v10    # "index$iv":I
    .end local v34    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_c

    .line 702
    .end local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "bitCount$iv$iv":I
    .end local v5    # "j$iv$iv":I
    .end local v7    # "i$iv$iv":I
    .end local v8    # "k$iv":[Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .end local v11    # "lastIndex$iv$iv":I
    .end local v20    # "$i$f$forEach":I
    .end local v24    # "$i$f$forEachIndex":I
    .end local v30    # "slot$iv$iv":J
    .end local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v36    # "m$iv$iv":[J
    :catch_1
    move-exception v0

    goto :goto_d

    .line 1728
    .restart local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v4    # "bitCount$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    .restart local v7    # "i$iv$iv":I
    .restart local v8    # "k$iv":[Ljava/lang/Object;
    .restart local v11    # "lastIndex$iv$iv":I
    .restart local v20    # "$i$f$forEach":I
    .restart local v24    # "$i$f$forEachIndex":I
    .restart local v30    # "slot$iv$iv":J
    .restart local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v36    # "m$iv$iv":[J
    :cond_8
    :goto_c
    const/16 v9, 0x8

    shr-long v30, v30, v9

    .line 1721
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_9
    const/16 v9, 0x8

    .line 1730
    .end local v5    # "j$iv$iv":I
    if-ne v4, v9, :cond_d

    .line 1716
    .end local v4    # "bitCount$iv$iv":I
    .end local v30    # "slot$iv$iv":J
    :cond_a
    if-eq v7, v11, :cond_c

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v9, v35

    move-object/from16 v10, v36

    goto :goto_9

    .end local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v36    # "m$iv$iv":[J
    .local v9, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v10, "m$iv$iv":[J
    :cond_b
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    .line 1733
    .end local v7    # "i$iv$iv":I
    .end local v9    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v10    # "m$iv$iv":[J
    .restart local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v36    # "m$iv$iv":[J
    :cond_c
    nop

    .line 1734
    .end local v11    # "lastIndex$iv$iv":I
    .end local v24    # "$i$f$forEachIndex":I
    .end local v35    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v36    # "m$iv$iv":[J
    :cond_d
    nop

    .line 707
    .end local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "k$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$forEach":I
    :try_start_11
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 708
    move-object v4, v13

    goto :goto_f

    .line 1673
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_9
    move-exception v0

    move-object v4, v13

    goto/16 :goto_29

    .line 707
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_a
    move-exception v0

    move-object v4, v13

    goto :goto_e

    .line 702
    :catch_2
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    :goto_d
    move-object v9, v0

    .line 703
    .local v9, "e":Ljava/lang/Exception;
    const/4 v12, 0x6

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    move-object v4, v13

    .end local v13    # "token$iv":Ljava/lang/Object;
    .local v4, "token$iv":Ljava/lang/Object;
    move-object v13, v0

    :try_start_12
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 704
    move-object v10, v3

    move-object v11, v15

    move-object v12, v14

    move-object v13, v6

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    invoke-static/range {v10 .. v17}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 705
    nop

    .line 707
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1a

    .line 705
    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 707
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_b
    move-exception v0

    :goto_e
    :try_start_14
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 696
    .restart local v13    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_e
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object v4, v13

    move-object/from16 v2, v20

    .line 711
    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    :goto_f
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_16

    .line 712
    nop

    .line 713
    :try_start_15
    move-object v11, v1

    check-cast v11, Landroidx/collection/ScatterSet;

    move-object v0, v11

    .restart local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v5, 0x0

    .line 1735
    .local v5, "$i$f$forEach":I
    nop

    .line 1736
    iget-object v7, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1738
    .local v7, "k$iv":[Ljava/lang/Object;
    move-object v8, v0

    .local v8, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v9, 0x0

    .line 1739
    .local v9, "$i$f$forEachIndex":I
    nop

    .line 1740
    iget-object v10, v8, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1741
    .restart local v10    # "m$iv$iv":[J
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 1743
    .restart local v11    # "lastIndex$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv":I
    if-gt v13, v11, :cond_13

    .line 1744
    :goto_10
    aget-wide v30, v10, v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 1745
    .restart local v30    # "slot$iv$iv":J
    move-wide/from16 v34, v30

    .local v34, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v20, 0x0

    .line 1746
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v24, v8

    move/from16 v36, v9

    move-wide/from16 v8, v34

    move-object/from16 v34, v4

    move/from16 v35, v5

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$forEach":I
    .end local v9    # "$i$f$forEachIndex":I
    .local v8, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v24, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v34, "token$iv":Ljava/lang/Object;
    .local v35, "$i$f$forEach":I
    .local v36, "$i$f$forEachIndex":I
    not-long v4, v8

    shl-long/2addr v4, v12

    and-long/2addr v4, v8

    and-long v4, v4, v16

    .line 1745
    .end local v8    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v16

    if-eqz v4, :cond_12

    .line 1747
    sub-int v4, v13, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 1748
    .local v4, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_11
    if-ge v5, v4, :cond_11

    .line 1749
    const-wide/16 v8, 0xff

    and-long v28, v30, v8

    .local v28, "value$iv$iv$iv":J
    const/16 v20, 0x0

    .line 1750
    .local v20, "$i$f$isFull":I
    const-wide/16 v26, 0x80

    cmp-long v37, v28, v26

    if-gez v37, :cond_f

    const/16 v20, 0x1

    goto :goto_12

    :cond_f
    const/16 v20, 0x0

    .line 1749
    .end local v20    # "$i$f$isFull":I
    .end local v28    # "value$iv$iv$iv":J
    :goto_12
    if-eqz v20, :cond_10

    .line 1751
    shl-int/lit8 v20, v13, 0x3

    add-int v20, v20, v5

    .line 1752
    .local v20, "index$iv$iv":I
    move/from16 v28, v20

    .local v28, "index$iv":I
    const/16 v29, 0x0

    .line 1753
    .local v29, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    :try_start_16
    aget-object v37, v7, v28

    check-cast v37, Landroidx/compose/runtime/ControlledComposition;

    .restart local v37    # "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v38, 0x0

    .line 714
    .local v38, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 715
    nop

    .line 1753
    .end local v37    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v38    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    nop

    .line 1754
    nop

    .line 1752
    .end local v28    # "index$iv":I
    .end local v29    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv":I
    goto :goto_13

    .line 721
    .end local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v4    # "bitCount$iv$iv":I
    .end local v5    # "j$iv$iv":I
    .end local v7    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "m$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv":I
    .end local v13    # "i$iv$iv":I
    .end local v20    # "index$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v30    # "slot$iv$iv":J
    .end local v35    # "$i$f$forEach":I
    .end local v36    # "$i$f$forEachIndex":I
    :catchall_c
    move-exception v0

    move-object/from16 v4, v34

    goto/16 :goto_16

    .line 716
    :catch_3
    move-exception v0

    move-object v9, v0

    goto :goto_15

    .line 1755
    .restart local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v4    # "bitCount$iv$iv":I
    .restart local v5    # "j$iv$iv":I
    .restart local v7    # "k$iv":[Ljava/lang/Object;
    .restart local v10    # "m$iv$iv":[J
    .restart local v11    # "lastIndex$iv$iv":I
    .restart local v13    # "i$iv$iv":I
    .restart local v24    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v30    # "slot$iv$iv":J
    .restart local v35    # "$i$f$forEach":I
    .restart local v36    # "$i$f$forEachIndex":I
    :cond_10
    :goto_13
    const/16 v8, 0x8

    shr-long v30, v30, v8

    .line 1748
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_11
    const/16 v8, 0x8

    const-wide/16 v26, 0x80

    .line 1757
    .end local v5    # "j$iv$iv":I
    if-ne v4, v8, :cond_15

    goto :goto_14

    .line 1745
    .end local v4    # "bitCount$iv$iv":I
    :cond_12
    const/16 v8, 0x8

    const-wide/16 v26, 0x80

    .line 1743
    .end local v30    # "slot$iv$iv":J
    :goto_14
    if-eq v13, v11, :cond_14

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v24

    move-object/from16 v4, v34

    move/from16 v5, v35

    move/from16 v9, v36

    goto :goto_10

    .end local v24    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v34    # "token$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$forEach":I
    .end local v36    # "$i$f$forEachIndex":I
    .local v4, "token$iv":Ljava/lang/Object;
    .local v5, "$i$f$forEach":I
    .local v8, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v9    # "$i$f$forEachIndex":I
    :cond_13
    move-object/from16 v34, v4

    move/from16 v35, v5

    move-object/from16 v24, v8

    move/from16 v36, v9

    .line 1760
    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$forEach":I
    .end local v8    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v9    # "$i$f$forEachIndex":I
    .end local v13    # "i$iv$iv":I
    .restart local v24    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v34    # "token$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$forEach":I
    .restart local v36    # "$i$f$forEachIndex":I
    :cond_14
    nop

    .line 1761
    .end local v10    # "m$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v36    # "$i$f$forEachIndex":I
    :cond_15
    nop

    .line 721
    .end local v0    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "k$iv":[Ljava/lang/Object;
    .end local v35    # "$i$f$forEach":I
    :try_start_17
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 722
    move-object/from16 v4, v34

    goto :goto_17

    .line 1673
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_d
    move-exception v0

    move-object/from16 v4, v34

    goto/16 :goto_29

    .line 721
    .end local v34    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_e
    move-exception v0

    move-object/from16 v34, v4

    .end local v4    # "token$iv":Ljava/lang/Object;
    .restart local v34    # "token$iv":Ljava/lang/Object;
    goto :goto_16

    .line 716
    .end local v34    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    :catch_4
    move-exception v0

    move-object/from16 v34, v4

    move-object v9, v0

    .line 717
    .end local v4    # "token$iv":Ljava/lang/Object;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v34    # "token$iv":Ljava/lang/Object;
    :goto_15
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    :try_start_18
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 718
    move-object v10, v3

    move-object v11, v15

    move-object v12, v14

    move-object v13, v6

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    invoke-static/range {v10 .. v17}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    .line 719
    nop

    .line 721
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_19
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    .line 719
    .end local v18    # "$i$f$trace":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local v34    # "token$iv":Ljava/lang/Object;
    nop

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    move-object/from16 v4, v34

    .restart local v4    # "token$iv":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .end local v4    # "token$iv":Ljava/lang/Object;
    return-void

    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local v34    # "token$iv":Ljava/lang/Object;
    :catchall_f
    move-exception v0

    move-object/from16 v4, v34

    .end local v34    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    goto/16 :goto_29

    .line 721
    .end local v4    # "token$iv":Ljava/lang/Object;
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v34    # "token$iv":Ljava/lang/Object;
    :catchall_10
    move-exception v0

    move-object/from16 v4, v34

    .end local v34    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    :goto_16
    :try_start_1a
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 725
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_16
    :goto_17
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1762
    .local v2, "$i$f$synchronized":I
    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    const/4 v0, 0x0

    .line 726
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_1b
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 1762
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_1c
    monitor-exit v1

    .line 734
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 735
    invoke-virtual/range {v33 .. v33}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 736
    invoke-virtual/range {v32 .. v32}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 737
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/compose/runtime/Recomposer;->access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    .line 738
    nop

    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    .line 1654
    nop

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1654
    nop

    .line 739
    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    return-void

    .line 1762
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object v3, v0

    :try_start_1d
    monitor-exit v1

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    .line 1673
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .local v13, "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_12
    move-exception v0

    move-object v4, v13

    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    goto/16 :goto_29

    .line 613
    .end local v4    # "token$iv":Ljava/lang/Object;
    .local v10, "token$iv":Ljava/lang/Object;
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :cond_17
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object v4, v10

    move-object v1, v11

    move-object v6, v12

    move-object v2, v13

    .line 614
    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    :goto_18
    nop

    .line 615
    move-object v5, v15

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1667
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1668
    const/4 v8, 0x0

    .local v8, "index$iv":I
    :try_start_1e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    :goto_19
    if-ge v8, v9, :cond_19

    .line 1669
    :try_start_1f
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1670
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    .local v11, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v12, 0x0

    .line 616
    .local v12, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    move-object/from16 v13, v32

    :try_start_20
    invoke-static {v3, v11, v13}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v16
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    if-eqz v16, :cond_18

    move-object/from16 v17, v16

    .local v17, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v16, 0x0

    .line 617
    .local v16, "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    move-object/from16 v20, v5

    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    :try_start_21
    move-object v5, v6

    check-cast v5, Ljava/util/Collection;

    move/from16 v24, v7

    move-object/from16 v7, v17

    .end local v17    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v7, "it":Landroidx/compose/runtime/ControlledComposition;
    .local v24, "$i$f$fastForEach":I
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 618
    nop

    .end local v7    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v16    # "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 616
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    goto :goto_1a

    .line 621
    .end local v8    # "index$iv":I
    .end local v10    # "item$iv":Ljava/lang/Object;
    .end local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v12    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastForEach":I
    :catch_5
    move-exception v0

    move-object v9, v0

    move-object v7, v13

    move-object/from16 v5, v33

    goto/16 :goto_26

    .line 616
    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .local v7, "$i$f$fastForEach":I
    .restart local v8    # "index$iv":I
    .restart local v10    # "item$iv":Ljava/lang/Object;
    .restart local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v12    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    :cond_18
    move-object/from16 v20, v5

    move/from16 v24, v7

    .line 619
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastForEach":I
    :goto_1a
    move-object/from16 v5, v33

    :try_start_22
    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    .line 620
    nop

    .line 1670
    .end local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v12    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    nop

    .line 1668
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v33, v5

    move-object/from16 v32, v13

    move-object/from16 v5, v20

    move/from16 v7, v24

    goto :goto_19

    .line 621
    .end local v8    # "index$iv":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastForEach":I
    :catch_6
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object/from16 v13, v32

    :goto_1b
    move-object/from16 v5, v33

    :goto_1c
    move-object v9, v0

    move-object v7, v13

    goto/16 :goto_26

    .line 1668
    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastForEach":I
    .restart local v8    # "index$iv":I
    :cond_19
    move-object/from16 v20, v5

    move/from16 v24, v7

    move-object/from16 v13, v32

    move-object/from16 v5, v33

    .line 1672
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .end local v8    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastForEach":I
    nop

    .line 626
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastForEach":I
    :try_start_23
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 627
    nop

    .line 633
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_1d

    :cond_1a
    move-object/from16 v24, v0

    goto/16 :goto_23

    .line 634
    :cond_1b
    :goto_1d
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "lock$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1674
    .local v8, "$i$f$synchronized":I
    monitor-enter v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1a

    const/4 v9, 0x0

    .line 635
    .local v9, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :try_start_24
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    .local v10, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1675
    .local v11, "$i$f$fastForEach":I
    nop

    .line 1676
    const/4 v12, 0x0

    move/from16 v16, v8

    .end local v8    # "$i$f$synchronized":I
    .local v12, "index$iv":I
    .local v16, "$i$f$synchronized":I
    :try_start_25
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    :goto_1e
    if-ge v12, v8, :cond_1e

    .line 1677
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1678
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    check-cast v20, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v24, v20

    .local v24, "value":Landroidx/compose/runtime/ControlledComposition;
    const/16 v20, 0x0

    .line 636
    .local v20, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 637
    move/from16 v26, v8

    move-object/from16 v8, v24

    .end local v24    # "value":Landroidx/compose/runtime/ControlledComposition;
    .local v8, "value":Landroidx/compose/runtime/ControlledComposition;
    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1d

    .line 638
    invoke-interface {v8, v0}, Landroidx/compose/runtime/ControlledComposition;->observesAnyOf(Ljava/util/Set;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 640
    move-object/from16 v24, v0

    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 638
    :cond_1c
    move-object/from16 v24, v0

    goto :goto_1f

    .line 637
    :cond_1d
    move-object/from16 v24, v0

    .line 642
    :goto_1f
    nop

    .line 1678
    .end local v8    # "value":Landroidx/compose/runtime/ControlledComposition;
    .end local v20    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 1676
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v24

    move/from16 v8, v26

    goto :goto_1e

    :cond_1e
    move-object/from16 v24, v0

    .line 1680
    .end local v12    # "index$iv":I
    nop

    .line 647
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 1681
    .local v8, "$i$f$removeIf":I
    const/4 v10, 0x0

    .line 1682
    .local v10, "gap$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    .line 1683
    .local v11, "size$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv":I
    :goto_20
    if-ge v12, v11, :cond_22

    .line 1684
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v17

    aget-object v17, v17, v12

    check-cast v17, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v20, v17

    .local v20, "value":Landroidx/compose/runtime/ControlledComposition;
    const/16 v17, 0x0

    .line 648
    .local v17, "$i$a$-removeIf-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$2":I
    move/from16 v26, v8

    move-object/from16 v8, v20

    .end local v20    # "value":Landroidx/compose/runtime/ControlledComposition;
    .local v8, "value":Landroidx/compose/runtime/ControlledComposition;
    .local v26, "$i$f$removeIf":I
    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1f

    invoke-interface {v15, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1f

    .line 649
    move/from16 v20, v9

    .end local v9    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .local v20, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    move-object v9, v15

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 650
    const/4 v9, 0x1

    goto :goto_21

    .line 648
    .end local v20    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v9    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :cond_1f
    move/from16 v20, v9

    .line 652
    .end local v9    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v20    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    const/4 v9, 0x0

    .line 648
    :goto_21
    nop

    .line 1684
    .end local v8    # "value":Landroidx/compose/runtime/ControlledComposition;
    .end local v17    # "$i$a$-removeIf-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$2":I
    if-eqz v9, :cond_20

    .line 1685
    add-int/lit8 v10, v10, 0x1

    .line 1686
    goto :goto_22

    .line 1689
    :cond_20
    if-lez v10, :cond_21

    .line 1690
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    sub-int v9, v12, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v17

    aget-object v17, v17, v12

    aput-object v17, v8, v9

    .line 1683
    :cond_21
    :goto_22
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v20

    move/from16 v8, v26

    goto :goto_20

    .end local v20    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .end local v26    # "$i$f$removeIf":I
    .local v8, "$i$f$removeIf":I
    .restart local v9    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :cond_22
    move/from16 v26, v8

    move/from16 v20, v9

    .line 1693
    .end local v8    # "$i$f$removeIf":I
    .end local v9    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .end local v12    # "i$iv":I
    .restart local v20    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v26    # "$i$f$removeIf":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    sub-int v9, v11, v10

    const/4 v12, 0x0

    invoke-static {v8, v12, v9, v11}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1694
    sub-int v8, v11, v10

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 1695
    nop

    .line 655
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "gap$iv":I
    .end local v11    # "size$iv":I
    .end local v26    # "$i$f$removeIf":I
    nop

    .end local v20    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    .line 1674
    :try_start_26
    monitor-exit v7

    .line 658
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    :goto_23
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    if-eqz v0, :cond_24

    .line 659
    nop

    .line 660
    :try_start_27
    invoke-static {v14, v3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 661
    :goto_24
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 662
    invoke-static {v3, v14, v13}, Landroidx/compose/runtime/Recomposer;->access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 663
    invoke-static {v14, v3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_1a

    goto :goto_24

    .line 661
    :cond_23
    move-object v11, v1

    move-object v10, v4

    move-object v12, v6

    move-object v4, v13

    move-object/from16 v0, v24

    move-object v13, v2

    goto/16 :goto_4

    .line 665
    :catch_9
    move-exception v0

    move-object v9, v0

    .line 666
    .local v9, "e":Ljava/lang/Exception;
    const/4 v12, 0x2

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v8, v3

    move-object v7, v13

    move-object v13, v0

    :try_start_28
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 667
    move-object v10, v3

    move-object v11, v15

    move-object v12, v14

    move-object v13, v6

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v17}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1a

    .line 668
    nop

    .line 1673
    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "$i$f$trace":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 658
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :cond_24
    move-object v7, v13

    move-object v11, v1

    move-object v13, v2

    move-object v10, v4

    move-object v12, v6

    move-object v4, v7

    move-object/from16 v0, v24

    goto/16 :goto_4

    .line 1674
    .restart local v7    # "lock$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    :catchall_13
    move-exception v0

    goto :goto_25

    .end local v16    # "$i$f$synchronized":I
    .local v8, "$i$f$synchronized":I
    :catchall_14
    move-exception v0

    move/from16 v16, v8

    .end local v8    # "$i$f$synchronized":I
    .restart local v16    # "$i$f$synchronized":I
    :goto_25
    :try_start_29
    monitor-exit v7

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1a

    .line 626
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_15
    move-exception v0

    move-object v2, v15

    goto :goto_27

    .line 621
    :catch_a
    move-exception v0

    move-object/from16 v7, v32

    move-object/from16 v5, v33

    move-object v9, v0

    .line 622
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_26
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v8, v3

    :try_start_2a
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    .line 623
    move-object v10, v3

    move-object v11, v15

    move-object v12, v14

    move-object v13, v6

    move-object v14, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    :try_start_2b
    invoke-static/range {v10 .. v17}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 624
    nop

    .line 626
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_2c
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1a

    .line 624
    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 626
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_16
    move-exception v0

    :goto_27
    :try_start_2d
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 1673
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .local v10, "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_17
    move-exception v0

    move-object v4, v10

    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    goto :goto_29

    .line 1655
    .end local v4    # "token$iv":Ljava/lang/Object;
    .local v8, "lock$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    .restart local v10    # "token$iv":Ljava/lang/Object;
    .restart local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_18
    move-exception v0

    move-object v4, v10

    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    goto :goto_28

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    .restart local v10    # "token$iv":Ljava/lang/Object;
    :catchall_19
    move-exception v0

    move-object/from16 v25, v2

    move-object v4, v10

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_28
    monitor-exit v8

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    .line 1673
    .end local v8    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local v19    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_1a
    move-exception v0

    goto :goto_29

    .end local v4    # "token$iv":Ljava/lang/Object;
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v10    # "token$iv":Ljava/lang/Object;
    :catchall_1b
    move-exception v0

    move-object/from16 v25, v2

    move-object v4, v10

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v10    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "token$iv":Ljava/lang/Object;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_29
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method

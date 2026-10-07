.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 4 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1646:1\n33#2,7:1647\n485#3:1654\n486#3,6:1656\n492#3,2:1666\n495#3:1669\n496#3,7:1682\n89#4:1655\n89#4:1677\n89#4:1689\n33#5,4:1662\n38#5:1668\n460#6,7:1670\n467#6,4:1678\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n880#1:1647,7\n893#1:1654\n893#1:1656,6\n893#1:1666,2\n893#1:1669\n893#1:1682,7\n893#1:1655\n894#1:1677\n906#1:1689\n893#1:1662,4\n893#1:1668\n893#1:1670,7\n893#1:1678,4\n*E\n"
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
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2"
    f = "Recomposer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x37a,
        0x38e,
        0x38f
    }
    m = "invokeSuspend"
    n = {
        "recomposeCoroutineScope",
        "frameSignal",
        "frameLoop",
        "frameLoop"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, v2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 879
    move-object/from16 v1, p0

    iget v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .end local v0    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/Job;

    .local v4, "frameLoop":Lkotlinx/coroutines/Job;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v25, v2

    move-object v2, v0

    move-object/from16 v0, v25

    goto/16 :goto_8

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "frameLoop":Lkotlinx/coroutines/Job;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Job;

    .local v7, "frameLoop":Lkotlinx/coroutines/Job;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/runtime/ProduceFrameSignal;

    .local v8, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .local v9, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v9

    move-object/from16 v25, v8

    move-object v8, v7

    move-object/from16 v7, v25

    goto/16 :goto_2

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v8    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v9    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .local v7, "$this$recompositionRunner":Lkotlinx/coroutines/CoroutineScope;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    move-object v14, v8

    check-cast v14, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 880
    .local v14, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v9, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v9, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v8, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v8

    if-nez v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .local v8, "value$iv":Z
    const/4 v10, 0x0

    .line 1647
    .local v10, "$i$f$requirePrecondition":I
    nop

    .line 1650
    if-nez v8, :cond_1

    .line 1651
    .end local v8    # "value$iv":Z
    const/4 v8, 0x0

    .line 881
    .local v8, "$i$a$-requirePrecondition-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$1":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recomposeCoroutineContext may not contain a Job; found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 882
    sget-object v12, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v12, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v9, v12}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v9

    .line 881
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1651
    .end local v8    # "$i$a$-requirePrecondition-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$1":I
    invoke-static {v8}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1653
    :cond_1
    nop

    .line 885
    .end local v10    # "$i$f$requirePrecondition":I
    invoke-interface {v7}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v8, v9}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-interface {v7}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v9

    invoke-static {v9}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v8, v9}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    .line 884
    invoke-static {v8}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v15

    .line 887
    .local v15, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    new-instance v8, Landroidx/compose/runtime/ProduceFrameSignal;

    invoke-direct {v8}, Landroidx/compose/runtime/ProduceFrameSignal;-><init>()V

    move-object v13, v8

    .line 888
    .local v13, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    new-instance v8, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    iget-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v8, v9, v14, v13, v5}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)V

    move-object v11, v8

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v7

    move-object/from16 v17, v13

    .end local v13    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v17, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v8

    move-object v9, v15

    move-object/from16 v7, v17

    .line 889
    .end local v14    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v17    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v7, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v8, "frameLoop":Lkotlinx/coroutines/Job;
    .restart local v9    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_1
    iget-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v10}, Landroidx/compose/runtime/Recomposer;->access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 890
    iget-object v10, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    move-object v11, v2

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    iput v4, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v10, v11}, Landroidx/compose/runtime/Recomposer;->access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_2

    .line 879
    return-object v0

    .line 890
    :cond_2
    move-object v15, v9

    .line 893
    .end local v9    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_2
    iget-object v14, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .local v14, "this_$iv":Landroidx/compose/runtime/Recomposer;
    iget-object v13, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/16 v16, 0x0

    .line 1654
    .local v16, "$i$f$recordComposerModifications":I
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "lock$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1655
    .local v10, "$i$f$synchronized":I
    monitor-enter v9

    .end local v9    # "lock$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1656
    .local v11, "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    :try_start_0
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;

    move-result-object v12

    move-object/from16 v17, v12

    .local v17, "it$iv":Landroidx/collection/MutableScatterSet;
    const/16 v18, 0x0

    .line 1657
    .local v18, "$i$a$-also-Recomposer$recordComposerModifications$changes$2$1$iv":I
    invoke-virtual/range {v17 .. v17}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    new-instance v3, Landroidx/collection/MutableScatterSet;

    move/from16 p1, v11

    const/4 v11, 0x0

    .end local v11    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    .local p1, "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    invoke-direct {v3, v11, v4, v5}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v3}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_3

    .end local p1    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    .restart local v11    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    :cond_3
    move/from16 p1, v11

    const/4 v11, 0x0

    .line 1658
    .end local v11    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    .end local v17    # "it$iv":Landroidx/collection/MutableScatterSet;
    .restart local p1    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    :goto_3
    nop

    .line 1656
    .end local v18    # "$i$a$-also-Recomposer$recordComposerModifications$changes$2$1$iv":I
    nop

    .line 1655
    .end local p1    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$2$iv":I
    monitor-exit v9

    .end local v10    # "$i$f$synchronized":I
    check-cast v12, Landroidx/collection/ScatterSet;

    .line 1659
    invoke-static {v12}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v3

    .line 1654
    nop

    .line 1660
    .local v3, "changes$iv":Ljava/util/Set;
    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1661
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v9

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1662
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1663
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    :goto_4
    if-ge v12, v11, :cond_4

    .line 1664
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1665
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, v17

    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .local v5, "composition$iv":Landroidx/compose/runtime/ControlledComposition;
    const/16 v20, 0x0

    .line 1666
    .local v20, "$i$a$-fastForEach-Recomposer$recordComposerModifications$5$iv":I
    invoke-interface {v5, v3}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 1667
    nop

    .line 1665
    .end local v5    # "composition$iv":Landroidx/compose/runtime/ControlledComposition;
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$5$iv":I
    nop

    .line 1663
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 1668
    .end local v3    # "changes$iv":Ljava/util/Set;
    .end local v12    # "index$iv$iv":I
    :cond_4
    nop

    .line 1669
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    :cond_5
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 1670
    .local v5, "$i$f$forEach":I
    nop

    .line 1671
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    .line 1672
    .local v12, "size$iv$iv":I
    if-lez v12, :cond_7

    .line 1673
    const/4 v9, 0x0

    .line 1674
    .local v9, "i$iv$iv":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v17

    move v3, v9

    .line 1676
    .end local v9    # "i$iv$iv":I
    .local v3, "i$iv$iv":I
    .local v17, "content$iv$iv":[Ljava/lang/Object;
    :goto_5
    aget-object v9, v17, v3

    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .local v11, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v20, 0x0

    .line 894
    .local v20, "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "lock$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1677
    .local v10, "$i$f$synchronized":I
    monitor-enter v9

    .end local v9    # "lock$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 895
    .local v21, "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1":I
    :try_start_1
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I

    move-result v22

    move-object/from16 p1, v0

    add-int/lit8 v0, v22, 0x1

    invoke-static {v13, v0}, Landroidx/compose/runtime/Recomposer;->access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1":I
    monitor-exit v9

    .line 897
    .end local v10    # "$i$f$synchronized":I
    invoke-static {v11}, Landroidx/compose/runtime/CompositionKt;->getRecomposeCoroutineContext(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;

    const/4 v9, 0x0

    invoke-direct {v0, v13, v11, v9}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v9, v15

    move-object/from16 v19, v11

    const/16 v24, 0x0

    .end local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v19, "composition":Landroidx/compose/runtime/ControlledComposition;
    move-object/from16 v11, v23

    move v4, v12

    .end local v12    # "size$iv$iv":I
    .local v4, "size$iv$iv":I
    move-object v12, v0

    move-object v0, v13

    move/from16 v13, v21

    move-object/from16 v21, v14

    .end local v14    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .local v21, "this_$iv":Landroidx/compose/runtime/Recomposer;
    move-object/from16 v14, v22

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 905
    nop

    .line 1676
    .end local v19    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v20    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    nop

    .line 1678
    add-int/lit8 v3, v3, 0x1

    .line 1679
    if-lt v3, v4, :cond_6

    goto :goto_6

    :cond_6
    move-object v13, v0

    move v12, v4

    move-object/from16 v14, v21

    const/4 v4, 0x1

    move-object/from16 v0, p1

    goto :goto_5

    .line 1677
    .end local v3    # "i$iv$iv":I
    .end local v4    # "size$iv$iv":I
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v17    # "content$iv$iv":[Ljava/lang/Object;
    .end local v21    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v10    # "$i$f$synchronized":I
    .restart local v20    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1672
    .end local v10    # "$i$f$synchronized":I
    .end local v20    # "$i$a$-recordComposerModifications-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2":I
    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .restart local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .restart local v12    # "size$iv$iv":I
    .restart local v14    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_7
    move-object/from16 p1, v0

    move v4, v12

    move-object/from16 v21, v14

    const/16 v24, 0x0

    .line 1681
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "size$iv$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    :goto_6
    nop

    .line 1682
    .end local v5    # "$i$f$forEach":I
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 1683
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "lock$iv$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1655
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    .end local v3    # "lock$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1684
    .local v0, "$i$a$-synchronized-Recomposer$recordComposerModifications$6$iv":I
    :try_start_2
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1687
    .end local v21    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    nop

    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1655
    monitor-exit v3

    .line 1688
    .end local v4    # "$i$f$synchronized":I
    nop

    .line 908
    .end local v16    # "$i$f$recordComposerModifications":I
    nop

    .line 906
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "lock$iv":Ljava/lang/Object;
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v4, 0x0

    .line 1689
    .restart local v4    # "$i$f$synchronized":I
    monitor-enter v3

    .end local v3    # "lock$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 907
    .local v5, "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$3":I
    :try_start_3
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Landroidx/compose/runtime/ProduceFrameSignal;->requestFrameLocked()Lkotlin/coroutines/Continuation;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    .line 1689
    .end local v5    # "$i$a$-synchronized-Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$3":I
    :goto_7
    monitor-exit v3

    .line 906
    .end local v4    # "$i$f$synchronized":I
    nop

    .line 908
    if-eqz v9, :cond_9

    .line 906
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 908
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 889
    :cond_9
    move-object/from16 v0, p1

    move-object v9, v15

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1689
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1684
    .restart local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6$iv":I
    .restart local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .restart local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .restart local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v16    # "$i$f$recordComposerModifications":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    :cond_a
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1685
    .end local v7    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .end local v15    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v21    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    const-string v7, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v4    # "$i$f$synchronized":I
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v16    # "$i$f$recordComposerModifications":I
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1655
    .end local v0    # "$i$a$-synchronized-Recomposer$recordComposerModifications$6$iv":I
    .restart local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local v16    # "$i$f$recordComposerModifications":I
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .end local v4    # "$i$f$synchronized":I
    .restart local v10    # "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    monitor-exit v9

    throw v0

    .line 910
    .end local v10    # "$i$f$synchronized":I
    .end local v16    # "$i$f$recordComposerModifications":I
    .restart local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .local v9, "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :cond_b
    invoke-interface {v9}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v2, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v9    # "recomposeCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    if-ne v3, v0, :cond_c

    .line 879
    return-object v0

    .line 910
    :cond_c
    move-object v3, v6

    move-object v4, v8

    move-object/from16 v25, v2

    move-object v2, v0

    move-object/from16 v0, v25

    .line 911
    .end local v2    # "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v8    # "frameLoop":Lkotlinx/coroutines/Job;
    .local v0, "this":Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "frameLoop":Lkotlinx/coroutines/Job;
    :goto_8
    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v4, v6}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "frameLoop":Lkotlinx/coroutines/Job;
    if-ne v4, v2, :cond_d

    .line 879
    return-object v2

    .line 911
    :cond_d
    move-object v2, v3

    .line 912
    .end local v3    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_9
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

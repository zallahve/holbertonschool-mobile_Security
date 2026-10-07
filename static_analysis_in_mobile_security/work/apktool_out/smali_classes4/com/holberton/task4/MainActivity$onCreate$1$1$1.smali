.class final Lcom/holberton/task4/MainActivity$onCreate$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/holberton/task4/MainActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/holberton/task4/MainActivity$onCreate$1$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,126:1\n1223#2,6:127\n1223#2,6:133\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/holberton/task4/MainActivity$onCreate$1$1$1\n*L\n52#1:127,6\n53#1:133,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/holberton/task4/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$mQLuU0Z3diryCeCaTSPsRf1wrhU(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->invoke$lambda$1$lambda$0(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s7MKRTkP89gL5UH4TApawrVrP2U(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->invoke$lambda$3$lambda$2(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/holberton/task4/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->this$0:Lcom/holberton/task4/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/holberton/task4/MainActivity;
    .param p1, "userKey"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/holberton/task4/MainActivity;->validateUserInput(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final invoke$lambda$3$lambda$2(Lcom/holberton/task4/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "this$0"    # Lcom/holberton/task4/MainActivity;
    .param p1, "userKey"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/holberton/task4/MainActivity;->access$getEncryptedFlag$p(Lcom/holberton/task4/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/holberton/task4/MainActivity;->access$xorDecrypt(Lcom/holberton/task4/MainActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 49
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    const-string v2, "innerPadding"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C51@2072L41,52@2153L49,50@2011L280:MainActivity.kt#wyyfml"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0xe

    if-nez v3, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    move v9, v2

    .line 51
    .end local v2    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit8 v2, v9, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 51
    :cond_3
    :goto_1
    const v2, -0x25a1d10a

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->this$0:Lcom/holberton/task4/MainActivity;

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 52
    iget-object v4, v0, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->this$0:Lcom/holberton/task4/MainActivity;

    move-object v5, p2

    .local v3, "invalid$iv":Z
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 128
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_5

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v7, v11, :cond_4

    goto :goto_2

    .line 132
    :cond_4
    move-object v4, v7

    goto :goto_3

    .line 129
    :cond_5
    :goto_2
    const/4 v11, 0x0

    .line 52
    .local v11, "$i$a$-cache-MainActivity$onCreate$1$1$1$1":I
    new-instance v12, Lcom/holberton/task4/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v12, v4}, Lcom/holberton/task4/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/holberton/task4/MainActivity;)V

    .line 129
    .end local v11    # "$i$a$-cache-MainActivity$onCreate$1$1$1$1":I
    move-object v4, v12

    .line 130
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    nop

    .line 128
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 127
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 52
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v4, -0x25a1c6e2

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->this$0:Lcom/holberton/task4/MainActivity;

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    iget-object v4, v0, Lcom/holberton/task4/MainActivity$onCreate$1$1$1;->this$0:Lcom/holberton/task4/MainActivity;

    move-object v5, p2

    .local v2, "invalid$iv":Z
    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 133
    .restart local v6    # "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 134
    .restart local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_7

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v7, v11, :cond_6

    goto :goto_4

    .line 138
    :cond_6
    move-object v4, v7

    goto :goto_5

    .line 135
    :cond_7
    :goto_4
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$a$-cache-MainActivity$onCreate$1$1$1$2":I
    new-instance v12, Lcom/holberton/task4/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v12, v4}, Lcom/holberton/task4/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/holberton/task4/MainActivity;)V

    .line 135
    .end local v11    # "$i$a$-cache-MainActivity$onCreate$1$1$1$2":I
    move-object v4, v12

    .line 136
    .restart local v4    # "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 137
    nop

    .line 134
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 133
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 53
    .end local v2    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 54
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-static {v2, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 51
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/holberton/task4/MainActivityKt;->InputValidationScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 56
    :goto_6
    return-void
.end method

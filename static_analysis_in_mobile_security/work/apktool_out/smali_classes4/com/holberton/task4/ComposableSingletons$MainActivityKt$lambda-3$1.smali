.class final Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/holberton/task4/ComposableSingletons$MainActivityKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;


# direct methods
.method public static synthetic $r8$lambda$FQ_kKIc6cClWQc3QYihD_-arKQM(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;->invoke$lambda$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S3_KBcL64XzqzgnNVIpseSTFeQ0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;->invoke$lambda$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;

    invoke-direct {v0}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;-><init>()V

    sput-object v0, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;->INSTANCE:Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method private static final invoke$lambda$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-string v0, "DummyFlag"

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 119
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C119@4064L111:MainActivity.kt#wyyfml"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 120
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    new-instance v1, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/holberton/task4/ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda1;-><init>()V

    const/16 v5, 0x36

    const/4 v6, 0x4

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/holberton/task4/MainActivityKt;->InputValidationScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 124
    :goto_1
    return-void
.end method

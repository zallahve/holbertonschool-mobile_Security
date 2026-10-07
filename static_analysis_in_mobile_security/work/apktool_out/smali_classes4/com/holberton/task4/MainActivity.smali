.class public final Lcom/holberton/task4/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J\u0018\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/holberton/task4/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "validateUserInput",
        "",
        "key",
        "",
        "encryptedFlag",
        "xorDecrypt",
        "encrypted",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final encryptedFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 26
    const-string v0, "BTYzMTAiMT0xKAssIg08MD4aOC1UOAhVRgUJSmZfBzEAHREDBDA7DzQMAwoAW1RBAh06Ig=="

    iput-object v0, p0, Lcom/holberton/task4/MainActivity;->encryptedFlag:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static final synthetic access$getEncryptedFlag$p(Lcom/holberton/task4/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/holberton/task4/MainActivity;

    .line 19
    iget-object v0, p0, Lcom/holberton/task4/MainActivity;->encryptedFlag:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$xorDecrypt(Lcom/holberton/task4/MainActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/holberton/task4/MainActivity;
    .param p1, "encrypted"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/holberton/task4/MainActivity;->xorDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final xorDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "encrypted"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 31
    .local v0, "decoded":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 33
    aget-byte v4, v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v5, v2, v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v4, v5

    .line 34
    .local v4, "decryptedChar":I
    int-to-char v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .end local v4    # "decryptedChar":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "task4native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    new-instance v1, Lcom/holberton/task4/MainActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/holberton/task4/MainActivity$onCreate$1;-><init>(Lcom/holberton/task4/MainActivity;)V

    const v3, -0x3f71a5a5

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v1, v4, v2}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public final native validateUserInput(Ljava/lang/String;)Z
.end method

.class Landroidx/core/app/ActivityOptionsCompat$Api33Impl;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method

.method static setPendingIntentBackgroundActivityLaunchAllowed(Landroid/app/ActivityOptions;Z)V
    .locals 0
    .param p0, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p1, "allowed"    # Z

    .line 524
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 525
    return-void
.end method

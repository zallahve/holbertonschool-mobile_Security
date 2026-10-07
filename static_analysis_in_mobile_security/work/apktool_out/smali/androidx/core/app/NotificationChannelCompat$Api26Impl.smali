.class Landroidx/core/app/NotificationChannelCompat$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canBypassDnd(Landroid/app/NotificationChannel;)Z
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 623
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    return v0
.end method

.method static canShowBadge(Landroid/app/NotificationChannel;)Z
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 569
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    return v0
.end method

.method static createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "importance"    # I

    .line 537
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method static enableLights(Landroid/app/NotificationChannel;Z)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "lights"    # Z

    .line 594
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 595
    return-void
.end method

.method static enableVibration(Landroid/app/NotificationChannel;Z)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "vibration"    # Z

    .line 610
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 611
    return-void
.end method

.method static getAudioAttributes(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 586
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method static getDescription(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 553
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 561
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 541
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getImportance(Landroid/app/NotificationChannel;)I
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 545
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    return v0
.end method

.method static getLightColor(Landroid/app/NotificationChannel;)I
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 598
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    return v0
.end method

.method static getLockscreenVisibility(Landroid/app/NotificationChannel;)I
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 627
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    return v0
.end method

.method static getName(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 549
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static getSound(Landroid/app/NotificationChannel;)Landroid/net/Uri;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 577
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getVibrationPattern(Landroid/app/NotificationChannel;)[J
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 614
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    return-object v0
.end method

.method static setDescription(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "description"    # Ljava/lang/String;

    .line 557
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method static setGroup(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "groupId"    # Ljava/lang/String;

    .line 565
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method static setLightColor(Landroid/app/NotificationChannel;I)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "argb"    # I

    .line 602
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 603
    return-void
.end method

.method static setShowBadge(Landroid/app/NotificationChannel;Z)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "showBadge"    # Z

    .line 573
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 574
    return-void
.end method

.method static setSound(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 582
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 583
    return-void
.end method

.method static setVibrationPattern(Landroid/app/NotificationChannel;[J)V
    .locals 0
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;
    .param p1, "vibrationPattern"    # [J

    .line 619
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 620
    return-void
.end method

.method static shouldShowLights(Landroid/app/NotificationChannel;)Z
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 590
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    return v0
.end method

.method static shouldVibrate(Landroid/app/NotificationChannel;)Z
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 606
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    return v0
.end method

.class public final Landroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/AlarmManagerCompat$Api21Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api23Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method public static canScheduleExactAlarms(Landroid/app/AlarmManager;)Z
    .locals 2
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 258
    invoke-static {p0}, Landroidx/core/app/AlarmManagerCompat$Api31Impl;->canScheduleExactAlarms(Landroid/app/AlarmManager;)Z

    move-result v0

    return v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Landroid/app/PendingIntent;
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 65
    nop

    .line 66
    nop

    .line 67
    invoke-static {p1, p2, p3}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->createAlarmClockInfo(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 66
    invoke-static {p0, v0, p4}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->setAlarmClock(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 71
    return-void
.end method

.method public static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 122
    nop

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "alarmManager.setExact(type, triggerAtMillis, operation)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 171
    return-void
.end method

.method public static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 226
    nop

    .line 227
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 231
    return-void
.end method

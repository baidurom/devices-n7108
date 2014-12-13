.class Lcom/android/server/AlarmManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field static INTERVAL:J

.field static RANGE:Ljava/lang/String;

.field static isEnabled:Z

.field static mURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    .line 125
    const-string v0, "0:0:0:0"

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->RANGE:Ljava/lang/String;

    .line 126
    const-string v0, "content://com.baidu.alarmalign.whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddInterval(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_align_interval"

    sget-wide v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAddInterval(Landroid/content/Context;IJLjava/util/ArrayList;)J
    .locals 13
    .parameter "context"
    .parameter "type"
    .parameter "seconds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 214
    .local p4, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-wide/16 v6, -0x1

    .line 215
    .local v6, now:J
    if-nez p1, :cond_2

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 220
    :goto_0
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v1

    .line 221
    .local v1, interval:J
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v1

    invoke-static {v6, v7, v9, v10}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v4

    .line 223
    .local v4, next:J
    const-wide/16 v9, 0x3e8

    div-long v9, v4, v9

    cmp-long v9, p2, v9

    if-gez v9, :cond_5

    if-eqz p4, :cond_5

    .line 228
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 229
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v8, 0x0

    .line 230
    .local v8, pre:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v0, 0x0

    .line 231
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 232
    move-object v8, v0

    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 234
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v9, v9, v4

    if-lez v9, :cond_3

    .line 244
    :cond_1
    if-eqz v8, :cond_4

    .line 248
    const-wide/16 v9, 0x3e8

    div-long v9, v4, v9

    sub-long/2addr v9, p2

    .line 253
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8           #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return-wide v9

    .line 218
    .end local v1           #interval:J
    .end local v4           #next:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    goto :goto_0

    .line 236
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v1       #interval:J
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v4       #next:J
    .restart local v8       #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    invoke-static {p0, v0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 240
    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    sub-long/2addr v9, p2

    goto :goto_1

    .line 250
    :cond_4
    const-wide/16 v9, 0x0

    goto :goto_1

    .line 253
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8           #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    const-wide/16 v9, 0x0

    goto :goto_1
.end method

.method public static hitRange(Ljava/lang/String;)Z
    .locals 14
    .parameter "rangeStr"

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 302
    if-nez p0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v9

    .line 306
    :cond_1
    const-string v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, res:[Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 311
    aget-object v10, v4, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 312
    .local v6, startHourOfDay:I
    aget-object v10, v4, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 313
    .local v7, startMinute:I
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 314
    .local v1, endHourOfDay:I
    const/4 v10, 0x3

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 315
    .local v2, endMinute:I
    if-ne v6, v1, :cond_2

    if-eq v7, v2, :cond_0

    .line 318
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 320
    .local v3, now:Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 321
    .local v5, start:Ljava/util/Calendar;
    invoke-virtual {v5, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 322
    invoke-virtual {v5, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 324
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 325
    .local v0, end:Ljava/util/Calendar;
    invoke-virtual {v0, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 326
    invoke-virtual {v0, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 328
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 329
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move v8, v9

    :cond_4
    move v9, v8

    goto :goto_0

    .line 331
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_6
    move v9, v8

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 131
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 170
    :goto_0
    return v2

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 136
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0

    .line 140
    :cond_1
    sput-boolean v3, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_range"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, range:Ljava/lang/String;
    if-nez v1, :cond_2

    move v2, v3

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$BaiduInjector;->hitRange(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_when_screen_off"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 155
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 156
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 160
    goto :goto_0

    .line 169
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_4
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0
.end method

.method public static isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 11
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 174
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, pkg:Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    .line 199
    :goto_0
    return v1

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "pkg = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 187
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_2

    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v9

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v1, v10

    .line 199
    goto :goto_0
.end method

.method public static next(JJ)J
    .locals 4
    .parameter "now"
    .parameter "interval"

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 297
    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    add-long v0, p0, p2

    rem-long v2, p0, p2

    sub-long p0, v0, v2

    goto :goto_0
.end method

.method public static setLockAgain(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;I)V
    .locals 9
    .parameter "service"
    .parameter "alarm"
    .parameter "index"

    .prologue
    .line 258
    if-nez p2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_2

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 263
    .local v0, isWakeUp:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 267
    sget-boolean v4, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 268
    .local v4, preStatus:Z
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 269
    .local v3, nowEnabled:Z
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 270
    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->access$invoke-setLocked-2e1e0e(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 262
    .end local v0           #isWakeUp:Z
    .end local v3           #nowEnabled:Z
    .end local v4           #preStatus:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 274
    .restart local v0       #isWakeUp:Z
    .restart local v3       #nowEnabled:Z
    .restart local v4       #preStatus:Z
    :cond_4
    if-eqz v3, :cond_0

    .line 279
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_5

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 285
    .local v1, now:J
    :goto_2
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v5

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 289
    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->access$invoke-setLocked-2e1e0e(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 282
    .end local v1           #now:J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .restart local v1       #now:J
    goto :goto_2
.end method

.class Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HiddenMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/HiddenMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "HiddenMenuContent.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    iput-object p1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private setDefaultPreferredValue()V
    .locals 5

    .prologue
    .line 285
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MyContentProvider"

    const-string v4, "VOICECALL_TYPE will set default value."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const-string v0, "voicecall_type"

    .line 288
    .local v0, VOICECALL_TYPE_KEY:Ljava/lang/String;
    const/4 v2, 0x0

    .line 289
    .local v2, VOLTE_PREFERRED:I
    const/4 v1, 0x1

    .line 294
    .local v1, VOLTE_BLOCKED:I
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 93
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MyContentProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$102(Z)Z

    .line 97
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$202(Z)Z

    .line 98
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$302(Z)Z

    .line 100
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfIp2 TEXT,mPrefCscfIp3 TEXT,mPrefCscfIpCnt TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mWiFiSetting TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mPcscfType TEXT,mCommercialPcscfIP TEXT,mCodecBandwidth TEXT,mAec TEXT,mNs TEXT,mVad TEXT,mUserAgent TEXT,mAudioBitRate TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mJitterBufferSetting TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mAudioBitRate TEXT,mJitterBufferSetting TEXT,mConfigServerUrl TEXT,mEnableConfigServer TEXT,mConfigServerServiceId TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mReserved7 TEXT,mReserved8 TEXT,mTimerA TEXT,mTimerB TEXT,mTimerC TEXT,mTimerD TEXT,mTimerE TEXT,mTimerF TEXT,mTimerG TEXT,mTimerH TEXT,mTimerI TEXT,mTimerJ TEXT,mTimerK TEXT,mTimer1 TEXT,mTimer2 TEXT,mTimer4 TEXT,mSKTPwd TEXT,mSKTRealm TEXT,mSKTUname TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 242
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MyContentProvider"

    const-string v2, "onUpgrade start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v11, 0x0

    .line 245
    .local v11, reserved2:Ljava/lang/String;
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MyContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    const/4 v8, 0x0

    .line 252
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 253
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "HiddenMenu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "mReserved2"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 257
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MyContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reserved2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    if-eqz v8, :cond_3

    .line 266
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v8           #c:Landroid/database/Cursor;
    :cond_3
    const-string v1, "DROP TABLE IF EXISTS HiddenMenu"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v11, :cond_4

    .line 276
    const-string v1, "SEC_AP_VTONLY"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 277
    .local v10, isAPVTOnly:Z
    const-string v1, "VT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v10, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->setDefaultPreferredValue()V

    .line 281
    .end local v10           #isAPVTOnly:Z
    :cond_4
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MyContentProvider"

    const-string v2, "onUpgrade end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_5
    return-void

    .line 260
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 261
    .local v9, e:Landroid/database/SQLException;
    :try_start_1
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MyContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception query for reserved attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    if-eqz v8, :cond_3

    goto :goto_0

    .line 264
    .end local v9           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    if-eqz v8, :cond_7

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_7
    throw v1
.end method

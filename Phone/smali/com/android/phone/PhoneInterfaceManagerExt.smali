.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

#.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mMobileInfo:Ljava/lang/String;

.field private mObjectNotiAll:Landroid/os/Handler;

.field private mObjectNotiAllRunnable:Ljava/lang/Runnable;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private nitzString:Ljava/lang/String;

.field private scCmdResult:[B

.field scHandler:Landroid/os/Handler;

.field private final scLock:Ljava/lang/Object;

.field private scReturnValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    .line 68
    const/4 v0, 0x0

    #iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$2;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    .line 236
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    .line 237
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 238
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 239
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    return-object v0
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 854
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method private publish()V
    .locals 5

    .prologue
    .line 243
    sget-boolean v2, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    .line 245
    :cond_0
    const-string v2, "phoneext"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    const-string v2, "gsm.version.ril-impl"

    const-string v3, "Qualcomm"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, ril_version:Ljava/lang/String;
    :try_start_0
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Qualcomm"

    const/4 v3, 0x0

    const-string v4, "Qualcomm"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    #new-instance v2, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    #invoke-direct {v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    #iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x0

    #iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method SendToSecRil(Z)V
    .locals 8
    .parameter "flag"

    .prologue
    .line 1315
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1316
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1319
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 1320
    .local v3, fileSize:I
    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1321
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1322
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1323
    if-eqz p1, :cond_2

    .line 1324
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1328
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->sendRequestRawToRIL([BLandroid/os/Message;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1335
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1340
    :cond_1
    :goto_1
    return-void

    .line 1326
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1330
    :catch_0
    move-exception v2

    .line 1331
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "PhoneInterfaceManagerExt"

    const-string v5, "IOException in startMobileQualityInfo"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1334
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1335
    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1336
    :catch_1
    move-exception v2

    .line 1337
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1336
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1337
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1333
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1334
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1335
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1338
    :cond_5
    :goto_2
    throw v4

    .line 1336
    :catch_3
    move-exception v2

    .line 1337
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "PhoneInterfaceManagerExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close outputstream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getActiveCallsCount()I
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .locals 2

    .prologue
    .line 931
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .locals 2

    .prologue
    .line 923
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUATI()[B
    .locals 5

    .prologue
    .line 1210
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v2, :cond_0

    .line 1214
    #iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v2, 0x0

    if-nez v2, :cond_1

    .line 1215
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1218
    :goto_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI Good Job"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1222
    :cond_0
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v3, 0xc

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, currentUATIStr:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1224
    const/4 v1, 0x0

    .line 1228
    :goto_1
    return-object v1

    .line 1217
    .end local v0           #currentUATIStr:Ljava/lang/String;
    :cond_1
    #new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    #sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0

    .line 1225
    .restart local v0       #currentUATIStr:Ljava/lang/String;
    :cond_2
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1228
    .local v1, data:[B
    goto :goto_1
.end method

.method public getHoldCallsCount()I
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1251
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getLteCellInfo() "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v1, :cond_0

    .line 1255
    #iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x0

    if-nez v1, :cond_1

    .line 1256
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1259
    :goto_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getLteCellInfo Good Job"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1263
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v2, 0x16

    const/16 v3, 0x3e

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, str:Ljava/lang/String;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-object v0

    .line 1258
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    #new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    #sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 1286
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    .line 1288
    #iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v0, 0x0

    if-nez v0, :cond_1

    .line 1289
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1292
    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getMobileQualityInformation Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1295
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x16

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    .line 1296
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    return-object v0

    .line 1291
    :cond_1
    #new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    #sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 285
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .locals 2

    .prologue
    .line 299
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .locals 2

    .prologue
    .line 289
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .locals 2

    .prologue
    .line 329
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    .prologue
    .line 309
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    return v0
.end method

.method public getSimPuk2Retry()I
    .locals 2

    .prologue
    .line 340
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    .prologue
    .line 319
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPukRetry()I

    move-result v0

    return v0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .locals 2

    .prologue
    .line 350
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1194
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo() "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    .line 1197
    #iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v0, 0x0

    if-nez v0, :cond_1

    .line 1198
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1201
    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1204
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    .line 1205
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v0

    .line 1200
    :cond_1
    #new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    #sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1232
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo() "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v1, :cond_0

    .line 1236
    #iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x0

    if-nez v1, :cond_1

    .line 1237
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1240
    :goto_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo Good Job"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1244
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v2, 0x16

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, str:Ljava/lang/String;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-object v0

    .line 1239
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    #new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    #sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1048
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_0

    .line 1049
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnected entered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    .line 1053
    :goto_0
    return v1

    .line 1052
    :cond_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "isBluetoothAudioConnected entered"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1034
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 828
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 0

    .prologue
    .line 1038
    return-void
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 1
    .parameter "data"
    .parameter "msg"

    .prologue
    .line 1270
    #iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v0, 0x0

    if-nez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1274
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1273
    :cond_0
    #iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    #invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 5
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 939
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 977
    :cond_1
    :goto_0
    return v1

    .line 946
    :cond_2
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg2 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 953
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    monitor-enter v2

    .line 957
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v2, 0x6

    if-ne p3, v2, :cond_4

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_4

    .line 967
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    goto/16 :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "Interrupted while trying to send request to RIL"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 961
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 968
    :cond_4
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_3

    .line 969
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting ATR size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/16 v3, 0x106

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 1012
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_0

    .line 1013
    if-eqz p1, :cond_1

    .line 1014
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 873
    return-void
.end method

.method public showPopupCallScreen()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 1300
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "startMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    .line 1304
    :cond_0
    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 1308
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "stopMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    .line 1312
    :cond_0
    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 2
    .parameter "passwd"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 278
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;Lcom/android/internal/telephony/IccCard;)V

    .line 279
    .local v0, checkIccPerso:Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->start()V

    .line 280
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin2"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 271
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 272
    .local v0, checkSimPin2:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 264
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 265
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    .line 266
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public turnOnBluetooth()V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 887
    return-void
.end method

.method public updateRAFTproximity(I)V
    .locals 2
    .parameter "raft_phone_state"

    .prologue
    .line 1004
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

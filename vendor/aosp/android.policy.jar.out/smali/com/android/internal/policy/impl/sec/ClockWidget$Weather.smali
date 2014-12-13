.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# static fields
.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_INVALID_LOC:Ljava/lang/String; = "aw_daemon_service_key_invalid_loc"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 228
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 231
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 232
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 233
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 234
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 235
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 236
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 247
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 250
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 251
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 254
    iput v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 255
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 274
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 286
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .locals 5

    .prologue
    .line 849
    const/16 v0, 0x258

    .line 850
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 852
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 854
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_0

    const/16 v3, 0x726

    if-gt v2, v3, :cond_0

    .line 855
    const/4 v3, 0x0

    .line 859
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 1
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 488
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_0
    :pswitch_0
    return v0

    .line 495
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 501
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 506
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 508
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 512
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 515
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 517
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 520
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 523
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 527
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 531
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 533
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 535
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 537
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 539
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 541
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 546
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 548
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private findDrawableIdForJapan(I)I
    .locals 4
    .parameter "weatherIconNum"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 556
    sparse-switch p1, :sswitch_data_0

    .line 727
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 573
    goto :goto_0

    .line 577
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 604
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 636
    goto :goto_0

    .line 649
    :sswitch_5
    const/16 v0, 0x8

    goto :goto_0

    .line 675
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_7
    move v0, v3

    .line 693
    goto :goto_0

    .line 706
    :sswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 708
    goto :goto_0

    .line 710
    :sswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_b
    move v0, v1

    .line 715
    goto :goto_0

    :sswitch_c
    move v0, v2

    .line 724
    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_8
        0x74 -> :sswitch_8
        0x75 -> :sswitch_8
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_8
        0xaa -> :sswitch_8
        0xb5 -> :sswitch_8
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_3
        0xcb -> :sswitch_3
        0xcc -> :sswitch_6
        0xcd -> :sswitch_6
        0xce -> :sswitch_3
        0xcf -> :sswitch_3
        0xd0 -> :sswitch_3
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_3
        0xd5 -> :sswitch_3
        0xd6 -> :sswitch_3
        0xd7 -> :sswitch_6
        0xd8 -> :sswitch_6
        0xd9 -> :sswitch_6
        0xda -> :sswitch_3
        0xdb -> :sswitch_3
        0xdc -> :sswitch_3
        0xdd -> :sswitch_3
        0xde -> :sswitch_3
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_3
        0xe1 -> :sswitch_3
        0xe2 -> :sswitch_3
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_6
        0xe5 -> :sswitch_6
        0xe6 -> :sswitch_6
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xfa -> :sswitch_6
        0x104 -> :sswitch_6
        0x10e -> :sswitch_6
        0x119 -> :sswitch_6
        0x12c -> :sswitch_5
        0x12d -> :sswitch_4
        0x12e -> :sswitch_3
        0x12f -> :sswitch_7
        0x130 -> :sswitch_5
        0x132 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_7
        0x137 -> :sswitch_4
        0x139 -> :sswitch_3
        0x13a -> :sswitch_7
        0x13b -> :sswitch_7
        0x13c -> :sswitch_4
        0x13d -> :sswitch_3
        0x140 -> :sswitch_4
        0x141 -> :sswitch_3
        0x142 -> :sswitch_7
        0x143 -> :sswitch_4
        0x144 -> :sswitch_4
        0x145 -> :sswitch_4
        0x146 -> :sswitch_7
        0x147 -> :sswitch_7
        0x148 -> :sswitch_5
        0x149 -> :sswitch_5
        0x154 -> :sswitch_6
        0x15e -> :sswitch_5
        0x169 -> :sswitch_8
        0x173 -> :sswitch_6
        0x190 -> :sswitch_6
        0x191 -> :sswitch_8
        0x192 -> :sswitch_6
        0x193 -> :sswitch_7
        0x195 -> :sswitch_6
        0x196 -> :sswitch_6
        0x197 -> :sswitch_6
        0x199 -> :sswitch_7
        0x19b -> :sswitch_8
        0x19d -> :sswitch_6
        0x19e -> :sswitch_7
        0x1a4 -> :sswitch_8
        0x1a5 -> :sswitch_6
        0x1a6 -> :sswitch_7
        0x1a7 -> :sswitch_7
        0x1a8 -> :sswitch_7
        0x1a9 -> :sswitch_6
        0x1aa -> :sswitch_6
        0x1ab -> :sswitch_6
        0x1ae -> :sswitch_9
        0x1c2 -> :sswitch_6
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_a
        0x228 -> :sswitch_b
        0x229 -> :sswitch_c
        0x22e -> :sswitch_c
        0x232 -> :sswitch_b
        0x233 -> :sswitch_c
        0x238 -> :sswitch_c
        0x23c -> :sswitch_b
        0x23d -> :sswitch_c
        0x246 -> :sswitch_b
        0x247 -> :sswitch_c
        0x258 -> :sswitch_0
        0x352 -> :sswitch_5
        0x353 -> :sswitch_4
        0x354 -> :sswitch_3
        0x355 -> :sswitch_5
        0x356 -> :sswitch_7
        0x357 -> :sswitch_c
        0x35d -> :sswitch_4
        0x35e -> :sswitch_3
        0x35f -> :sswitch_5
        0x360 -> :sswitch_7
        0x361 -> :sswitch_c
        0x367 -> :sswitch_4
        0x368 -> :sswitch_3
        0x369 -> :sswitch_5
        0x36a -> :sswitch_7
        0x371 -> :sswitch_4
        0x372 -> :sswitch_3
        0x373 -> :sswitch_5
        0x374 -> :sswitch_7
    .end sparse-switch
.end method

.method private findDrawableIdForKweather(I)I
    .locals 2
    .parameter "weatherIconNum"

    .prologue
    const/4 v1, 0x0

    .line 778
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 779
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 781
    :pswitch_0
    if-eqz v0, :cond_0

    .line 782
    const/16 v1, 0x12

    goto :goto_0

    .line 788
    :pswitch_1
    if-eqz v0, :cond_1

    .line 789
    const/16 v1, 0x13

    goto :goto_0

    .line 791
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 794
    :pswitch_2
    if-eqz v0, :cond_2

    .line 795
    const/16 v1, 0x14

    goto :goto_0

    .line 797
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 799
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 801
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 804
    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 806
    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 815
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 819
    :pswitch_8
    const/16 v1, 0x9

    goto :goto_0

    .line 823
    :pswitch_9
    const/16 v1, 0xa

    goto :goto_0

    .line 829
    :pswitch_a
    const/16 v1, 0xb

    goto :goto_0

    .line 835
    :pswitch_b
    const/16 v1, 0xd

    goto :goto_0

    .line 841
    :pswitch_c
    const/16 v1, 0xe

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private findDrawableIdForSina(I)I
    .locals 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 732
    packed-switch p1, :pswitch_data_0

    .line 773
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 736
    goto :goto_0

    .line 739
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 741
    goto :goto_0

    .line 745
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 747
    :pswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 749
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 751
    goto :goto_0

    .line 753
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 756
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 758
    :pswitch_a
    const/16 v0, 0xe

    goto :goto_0

    .line 763
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 765
    :pswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 767
    :pswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 769
    :pswitch_e
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_f
    move v0, v2

    .line 771
    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 888
    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 465
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 473
    .local v1, unlock_weather_drawables:[I
    const/4 v0, 0x0

    .line 474
    .local v0, i:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForSina(I)I

    move-result v0

    .line 483
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    return-void

    .line 476
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForKweather(I)I

    move-result v0

    goto :goto_0

    .line 478
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForJapan(I)I

    move-result v0

    goto :goto_0

    .line 481
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    goto :goto_0

    .line 465
    nop

    :array_0
    .array-data 0x4
        0xadt 0x4t 0x8t 0x1t
        0xaet 0x4t 0x8t 0x1t
        0xaft 0x4t 0x8t 0x1t
        0xb0t 0x4t 0x8t 0x1t
        0xb1t 0x4t 0x8t 0x1t
        0xb2t 0x4t 0x8t 0x1t
        0xb3t 0x4t 0x8t 0x1t
        0xb4t 0x4t 0x8t 0x1t
        0xb5t 0x4t 0x8t 0x1t
        0xb6t 0x4t 0x8t 0x1t
        0xb7t 0x4t 0x8t 0x1t
        0xb8t 0x4t 0x8t 0x1t
        0xb8t 0x4t 0x8t 0x1t
        0xb9t 0x4t 0x8t 0x1t
        0xbat 0x4t 0x8t 0x1t
        0xbbt 0x4t 0x8t 0x1t
        0xbct 0x4t 0x8t 0x1t
        0xbdt 0x4t 0x8t 0x1t
        0xbet 0x4t 0x8t 0x1t
        0xbft 0x4t 0x8t 0x1t
        0xc0t 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x1040671

    const/4 v5, 0x1

    .line 865
    const-string v0, ""

    .line 867
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 884
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 870
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 871
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 872
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x104066f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 884
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_0

    .line 870
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 878
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040670

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 292
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 294
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 303
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    .line 329
    return-void

    .line 296
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 298
    const-string v1, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x10202e4

    .line 344
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 345
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x1040664

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 348
    const v0, 0x10202e3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 349
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 350
    const v0, 0x10202e2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 351
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 353
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080424

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x108041b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 897
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 900
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 13

    .prologue
    .line 371
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 372
    .local v6, mAppServiceStatus:I
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v4, 0x1

    .line 374
    .local v4, isServiceEnable:Z
    :goto_0
    const-string v0, ""

    .line 375
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 376
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_1
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 386
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 388
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 415
    const/4 v5, 0x0

    .line 416
    .local v5, lowTemp:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 417
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .line 418
    .local v2, currentTemp:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v5, v9

    .line 423
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 424
    .local v7, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 425
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 437
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, text_currentTemp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 446
    :goto_3
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    .line 447
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080414

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    :cond_0
    :goto_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 457
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v5           #lowTemp:I
    .end local v7           #tempScale:I
    .end local v8           #text_currentTemp:Ljava/lang/String;
    :goto_5
    return-void

    .line 372
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 378
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 391
    :cond_3
    if-eqz v4, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 393
    :cond_4
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isJapanFeature()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_invalid_loc"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 396
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v10, 0x104069a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 399
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 400
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_5

    .line 406
    :cond_6
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 408
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_5

    .line 421
    .restart local v5       #lowTemp:I
    :cond_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .restart local v2       #currentTemp:I
    goto/16 :goto_2

    .line 442
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v7       #tempScale:I
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #text_currentTemp:Ljava/lang/String;
    goto/16 :goto_3

    .line 448
    :cond_9
    if-nez v7, :cond_0

    .line 449
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080419

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method

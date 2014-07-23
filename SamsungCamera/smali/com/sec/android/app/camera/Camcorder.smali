.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$GestureListener;,
        Lcom/sec/android/app/camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static final DELAY_TIME_WINDOW_FOCUS_ONOFF:I = 0xc8

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_VIDEO_URI:Ljava/lang/String; = "last_video_uri"

.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final MSG_RECORDING_MODE_POPUP_FOR_THREAD:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field private static STOPAVAILABLE_DURATION:I = 0x0

.field private static STOPAVAILABLE_TIMER_EXPIRED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field private static final WINDOW_FOCUS_OFF:I = 0x1f5

.field private static final WINDOW_FOCUS_ON:I = 0x1f4

.field private static mNotSupportedZoomToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private battTemp:I

.field private mActionMoveCount:I

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mCallbackValueSum:F

.field private mCallbackValueSumMax:F

.field private mCallbackValueSumMin:F

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

.field private mCamcorderSound:Landroid/media/MediaActionSound;

.field protected mCameraTemperatureHandler:Landroid/os/Handler;

.field private mCameraTemperatureObserver:Landroid/os/UEventObserver;

.field private mChkLaunchGallery:Z

.field private mDirtyCount:I

.field private mDoRestoreShutterButton:Z

.field private mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsCallStateRinging:Z

.field private mIsDestroying:Z

.field private mIsReocrdingStoppedForcely:Z

.field private mIsShotSlowMotionNeeded:Z

.field private mIsSlowFastSubMenuCalled:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

.field private mLastVideoUri:Landroid/net/Uri;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

.field public mMax:Z

.field private mMaxScaleFactor:F

.field public mMin:Z

.field private mMinScaleFactor:F

.field private mPassedTimeAfterUpdatingRecordingButtonMs:J

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

.field protected mRecordingPopupHandler:Landroid/os/Handler;

.field private mRecordingStopAvailable:Z

.field private mRemainTime:I

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSlowMotionRecordingTimeMs:I

.field private mSnapshotLimitationDialog:Landroid/app/AlertDialog;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field private mTimeDrift:J

.field private mTouchAutoFocusActive:Z

.field private mVolumeKeyPressed:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field private mwLostWinFocus:Z

.field private newZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 159
    sput v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    .line 160
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    .line 162
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    .line 163
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    .line 164
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    .line 170
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    .line 171
    const/16 v0, 0x5dc

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_DURATION:I

    .line 180
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    .line 181
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    .line 184
    sput v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    .line 383
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 131
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 132
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 139
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 140
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    .line 141
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 143
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 146
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 148
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 152
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 165
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 172
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 178
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    .line 186
    sget v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 194
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 196
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 200
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 203
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 205
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    .line 206
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMax:F

    .line 207
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMin:F

    .line 209
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    .line 210
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    .line 212
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMaxScaleFactor:F

    .line 213
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMinScaleFactor:F

    .line 217
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    .line 261
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    .line 337
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHoverListener:Landroid/view/View$OnHoverListener;

    .line 358
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$GestureListener;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

    .line 359
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 361
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 362
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 363
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 365
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 370
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 373
    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 374
    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 375
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 381
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 385
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 386
    iput-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 387
    iput-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 388
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    .line 391
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 402
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 587
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$5;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2096
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$6;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3034
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$10;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureHandler:Landroid/os/Handler;

    .line 3048
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$11;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    .line 3859
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 3861
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->handleCameraTemperatureCheck()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    return p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return p1
.end method

.method private checkCamcorderStartCondition_RequestedSize()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.sizeLimit"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 933
    .local v1, requestedSizeLimit:J
    const/4 v3, 0x0

    .line 935
    .local v3, videoBitRate:I
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 936
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    if-eqz v0, :cond_0

    .line 937
    iget v3, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 943
    :cond_0
    cmp-long v6, v1, v9

    if-lez v6, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v4, :cond_1

    .line 945
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 947
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 948
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v1, v6

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 955
    :cond_2
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCamcorderStartCondition_RequestedSize: cur size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ref size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x2

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    cmp-long v6, v1, v9

    if-lez v6, :cond_3

    mul-int/lit8 v6, v3, 0x2

    div-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 958
    const v6, 0x7f0900e7

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 960
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 964
    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/16 v7, -0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3095
    const-string v2, "status"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3096
    .local v1, battStatus:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 3097
    const-string v2, "level"

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 3098
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3100
    .local v0, battPlugged:I
    const-string v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 3102
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBatteryChanged : Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3105
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    if-ne v2, v6, :cond_9

    .line 3106
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    .line 3107
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 3122
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-gt v2, v7, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_1

    .line 3123
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_1

    .line 3124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3125
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v2, :cond_1

    .line 3126
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3127
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 3147
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v2, v3, :cond_3

    .line 3149
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_b

    .line 3150
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3151
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3153
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3156
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    .line 3172
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-le v2, v7, :cond_5

    .line 3173
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3174
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3176
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3178
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v2, :cond_5

    .line 3179
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 3180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3196
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    .line 3197
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3198
    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    if-ne v0, v6, :cond_7

    .line 3199
    :cond_6
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3201
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v2, :cond_8

    .line 3202
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 3205
    :cond_8
    return-void

    .line 3111
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheatDuringRecording()V

    goto/16 :goto_0

    .line 3115
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 3159
    :cond_b
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_3

    .line 3160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3161
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v2, :cond_3

    .line 3162
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3163
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto :goto_1
.end method

.method private handleCameraTemperatureCheck()V
    .locals 0

    .prologue
    .line 3091
    return-void
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 4271
    const-string v1, "Camcorder"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4315
    :goto_0
    return-void

    .line 4276
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4277
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4278
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4279
    if-eqz p1, :cond_3

    .line 4280
    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4284
    :goto_1
    const v1, 0x7f090018

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$15;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4290
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4291
    new-instance v1, Lcom/sec/android/app/camera/Camcorder$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$16;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4307
    if-eqz p1, :cond_1

    .line 4308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 4309
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4310
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_2

    .line 4311
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 4313
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4314
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4282
    :cond_3
    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private initIntentFilter()V
    .locals 8

    .prologue
    .line 730
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 740
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 743
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v4, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v3, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 757
    .end local v3           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 758
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 759
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 764
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 765
    .local v5, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .local v0, i:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 775
    new-instance v6, Landroid/content/Intent;

    const-string v7, "intent.stop.app-in-app"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 780
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 784
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 785
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    return-void
.end method

.method private initRemains()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 794
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 798
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 800
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 806
    return-void
.end method

.method private onChkVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 611
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 613
    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 4348
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 4349
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4351
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 4352
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4353
    :cond_1
    return-void
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    .line 2124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 2125
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2126
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2128
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2130
    :cond_0
    return-void
.end method

.method private resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 616
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 618
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 714
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-nez v1, :cond_1

    .line 715
    const-string v1, "Camcorder"

    const-string v2, "setImmutableView: mGLCamcorderBaseIndicators is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 719
    if-nez p1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 721
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_0

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 723
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    goto :goto_0
.end method

.method private showRecordingModePopup()V
    .locals 7

    .prologue
    const/16 v6, 0x45

    const/16 v2, 0x34

    .line 3959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_0

    .line 3962
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 3963
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3964
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->showMenu()V

    .line 3975
    return-void

    .line 3967
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_0

    .line 3969
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 3970
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3971
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startCameraTemperatureObserving()V
    .locals 2

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/platform/sec-subthermistor"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3059
    const-string v0, "Camcorder"

    const-string v1, "startCameraTemperatureObserving : startObserving - CAMERA_TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    return-void
.end method

.method private stopCameraTemperatureObserving()V
    .locals 3

    .prologue
    .line 3064
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 3065
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : stopObserving - CAMERA_TEMPERATURE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3069
    :goto_0
    return-void

    .line 3066
    :catch_0
    move-exception v0

    .line 3067
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : thread waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 4124
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopPostRecordingSnapAnimation()V
    .locals 2

    .prologue
    .line 4173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4174
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4176
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private switchToCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2276
    sput-boolean v2, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 2278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from-camcorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    sget v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SPEED:I

    if-eq v1, v2, :cond_0

    .line 2288
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x7e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2295
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->keep()V

    .line 2298
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 2300
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 2304
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 2305
    return-void
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4356
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 4357
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4358
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 4359
    return-void
.end method


# virtual methods
.method public IsShutterButtonHidden()Z
    .locals 1

    .prologue
    .line 3828
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .locals 1

    .prologue
    .line 3832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 3833
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1917
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1918
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 3761
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 3762
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2745
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2543
    if-eqz p1, :cond_0

    .line 2544
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2545
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2749
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 3769
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2753
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2529
    if-eqz p1, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2531
    :cond_0
    return-void
.end method

.method public checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3209
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3210
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3211
    return-void
.end method

.method protected checkCameraDuringCall()V
    .locals 1

    .prologue
    .line 4434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mEnableDuringCall:Z

    .line 4435
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3816
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3817
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3818
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3819
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3821
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3824
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3825
    return-void
.end method

.method public checkStorageLow()V
    .locals 4

    .prologue
    .line 3803
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 3804
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3805
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3813
    :goto_0
    return-void

    .line 3808
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 3809
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0

    .line 3811
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public finishRecordingWithError()V
    .locals 2

    .prologue
    .line 3566
    const-string v0, "Camcorder"

    const-string v1, "finishRecordingWithError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3570
    return-void
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 4247
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 4248
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 4253
    :cond_0
    :goto_0
    return-void

    .line 4251
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4252
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 4411
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getCityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 4225
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getMaxFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingStopAvailable()Z
    .locals 1

    .prologue
    .line 2605
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3779
    const/4 v0, 0x0

    .line 3781
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_0

    .line 3782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 3783
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3784
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 3785
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3786
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3792
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3793
    const/4 v0, 0x0

    .line 3795
    :cond_1
    return v0

    .line 3787
    :cond_2
    if-gtz v0, :cond_0

    .line 3788
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 3799
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    return v0
.end method

.method public getRequestedDurationLimit()I
    .locals 4

    .prologue
    .line 3240
    const/4 v0, 0x0

    .line 3241
    .local v0, requestedDurationLimit:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3245
    :cond_0
    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2159
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public gettBattLevel()I
    .locals 2

    .prologue
    .line 2983
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 2

    .prologue
    .line 2966
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2967
    const-string v0, "Camcorder"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2971
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 2975
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 2978
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 2980
    :cond_1
    return-void

    .line 2973
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleCamcorderRecordingModeChanged(I)V
    .locals 4
    .parameter "recordingmode"

    .prologue
    const/16 v3, 0x69

    const/4 v2, 0x1

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2377
    const-string v0, "Camcorder"

    const-string v1, "continuous AF to Auto focus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2386
    :cond_1
    :goto_0
    return-void

    .line 2380
    :cond_2
    const-string v0, "Camcorder"

    const-string v1, "continuous AF restart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 3214
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3217
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 3221
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 3224
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V

    .line 3225
    return-void

    .line 3219
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleRecordingCommand(I)V
    .locals 2
    .parameter "command"

    .prologue
    .line 3353
    packed-switch p1, :pswitch_data_0

    .line 3376
    const-string v0, "Camcorder"

    const-string v1, "Invalid recording state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :goto_0
    return-void

    .line 3355
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_0

    .line 3358
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_0

    .line 3361
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingMenu()V

    .line 3362
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 3364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startAFHideRectTimer()V

    goto :goto_0

    .line 3368
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_0

    .line 3372
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleTakePicture()V

    goto :goto_0

    .line 3353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleRecordingSpeedModeChanged(II)V
    .locals 7
    .parameter "mode"
    .parameter "speed"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc1f

    const/16 v4, 0xc1e

    .line 2645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2646
    :cond_0
    const-string v2, "Camcorder"

    const-string v3, "speed off, view disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_1
    :goto_0
    return-void

    .line 2651
    :cond_2
    const-string v2, "Camcorder"

    const-string v3, "handleRecordingSpeedChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 2655
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;

    .line 2656
    .local v1, slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    if-nez v1, :cond_3

    .line 2657
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;

    .end local v1           #slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2658
    .restart local v1       #slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 2662
    :cond_3
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    if-nez v2, :cond_1

    .line 2663
    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->setSpeedControl(I)V

    .line 2664
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->reset()V

    .line 2665
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto :goto_0

    .line 2667
    .end local v1           #slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 2668
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;

    .line 2669
    .local v0, fastControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
    if-nez v0, :cond_5

    .line 2670
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;

    .end local v0           #fastControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2671
    .restart local v0       #fastControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 2675
    :cond_5
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    if-nez v2, :cond_1

    .line 2676
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setSpeedControl(I)V

    .line 2677
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->reset()V

    .line 2678
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto :goto_0
.end method

.method public handleRecordingTimerElapsed()I
    .locals 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v13, 0x3e8

    const-wide/16 v11, 0x0

    .line 3300
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v8, 0xbd3

    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3301
    .local v2, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long v0, v7, v9

    .line 3307
    .local v0, currentMs:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3308
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    sub-int v5, v7, v8

    .line 3310
    .local v5, timeDiffOnSlowMotion:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionTimescale()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 3338
    .end local v5           #timeDiffOnSlowMotion:I
    :cond_0
    :goto_0
    return v6

    .line 3315
    :cond_1
    iget-wide v7, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_2

    .line 3316
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3318
    :cond_2
    iget-wide v7, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    sub-long v3, v0, v7

    .line 3320
    .local v3, timeDiff:J
    cmp-long v7, v11, v3

    if-gez v7, :cond_3

    iget-wide v7, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v7, v13, v7

    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    .line 3324
    :cond_3
    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v6, v13, v6

    cmp-long v6, v3, v6

    if-ltz v6, :cond_4

    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v6, v13, v6

    sub-long v6, v3, v6

    iput-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3325
    :cond_4
    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    cmp-long v6, v6, v11

    if-gez v6, :cond_5

    iput-wide v11, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3327
    :cond_5
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3329
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dritf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " RecordingTm:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3331
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    .line 3333
    :cond_6
    if-eqz v2, :cond_7

    .line 3334
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3335
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 3338
    :cond_7
    iget-wide v6, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    long-to-int v6, v6

    goto/16 :goto_0
.end method

.method public handleShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "Preview is not started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback_TimerBgm()V

    .line 1601
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1602
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1620
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 1621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    .line 1624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 1625
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    goto :goto_0

    .line 1607
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1610
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1613
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 13
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    const v12, 0x7f070009

    .line 2190
    const-string v10, "Camcorder"

    const-string v11, "handleTouchAutoFocusEvent"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2194
    const-string v10, "Camcorder"

    const-string v11, "Wrong state for touchAF"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2199
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v1, v10

    .line 2200
    .local v1, PtX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v2, v10

    .line 2202
    .local v2, PtY:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    .line 2203
    .local v4, allowLeftMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    .line 2205
    .local v5, allowTopMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v7

    .line 2206
    .local v7, leftMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v8

    .line 2207
    .local v8, rightMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v9

    .line 2208
    .local v9, topMargin:I
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getBottom()I

    move-result v6

    .line 2217
    .local v6, bottomMargin:I
    if-lt v1, v7, :cond_0

    if-gt v1, v8, :cond_0

    .line 2218
    add-int v10, v7, v4

    if-gt v1, v10, :cond_5

    .line 2219
    add-int v1, v7, v4

    .line 2223
    :cond_2
    :goto_1
    add-int v10, v9, v5

    if-gt v2, v10, :cond_6

    .line 2224
    add-int v2, v9, v5

    .line 2230
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2231
    sub-int v0, v1, v7

    .line 2233
    .local v0, NormalPtX:I
    if-eqz p2, :cond_4

    .line 2234
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setTouchFocusPosition(II)V

    .line 2248
    .end local v0           #NormalPtX:I
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->startTouchAutoFocus()V

    .line 2249
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v10, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setTouchFocusRectCenter(II)V

    goto/16 :goto_0

    .line 2220
    :cond_5
    sub-int v10, v8, v4

    if-lt v1, v10, :cond_2

    .line 2221
    sub-int v1, v8, v4

    goto :goto_1

    .line 2225
    :cond_6
    sub-int v10, v6, v5

    if-lt v2, v10, :cond_3

    .line 2226
    sub-int v2, v6, v5

    goto :goto_2

    .line 2241
    :cond_7
    sub-int v3, v2, v9

    .line 2243
    .local v3, WidePtY:I
    if-eqz p2, :cond_4

    .line 2244
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v1, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->setTouchFocusPosition(II)V

    goto :goto_3
.end method

.method public hideAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideAudioOffIndicator()V

    .line 2596
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2135
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusRect()V

    .line 2140
    :cond_0
    return-void
.end method

.method public hideRecordingLayout()V
    .locals 2

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3252
    :cond_0
    return-void
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideShutterButton()V

    .line 4210
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenu()V

    .line 4202
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenuItems()V

    .line 4194
    return-void
.end method

.method public hideZoomMenu()V
    .locals 3

    .prologue
    .line 4186
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 4187
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 4190
    :cond_0
    return-void
.end method

.method public initCamcorderSound()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2914
    const-string v1, "Camcorder"

    const-string v2, "Initialize Camcorder Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 2916
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2918
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 2919
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v7

    .line 2920
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 2922
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2923
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2925
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_1

    .line 2926
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 2927
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 2929
    :cond_1
    return-void
.end method

.method public isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 4415
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isAccuWeatherEnable()Z

    move-result v0

    return v0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 4229
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isCAFDisabled()Z
    .locals 1

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    const/4 v0, 0x1

    .line 2185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3853
    const-string v0, "Camcorder"

    const-string v1, "isCapturing - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    const/4 v0, 0x0

    .line 3856
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isCheckedTopActivity()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1365
    const-string v7, "Camcorder"

    const-string v8, "isCheckedTopActivity"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1368
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1370
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1371
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1372
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1373
    .local v4, top:Ljava/lang/String;
    const-string v7, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1374
    const-string v6, "Camcorder"

    const-string v7, "topActivity is camera"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #top:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 1377
    .restart local v3       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #top:Ljava/lang/String;
    :cond_1
    const-string v5, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "topActivity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1378
    goto :goto_0
.end method

.method public isGpsEULAEnabledinCamcorder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2777
    const-string v5, "Camcorder"

    const-string v6, "ghee - isGpsEULAEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2779
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2781
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2782
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2783
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2785
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0900d8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2787
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2788
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2790
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2791
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2793
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$7;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2799
    const v5, 0x7f0900a2

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$8;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camcorder$8;-><init>(Lcom/sec/android/app/camera/Camcorder;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2815
    const v5, 0x7f0900dc

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$9;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2821
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2822
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2823
    return-void
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPauseResumeMenuSupported()Z
    .locals 1

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    const/4 v0, 0x0

    .line 2562
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3845
    const-string v0, "Camcorder"

    const-string v1, "isPreviewStarted - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    const/4 v0, 0x0

    .line 3848
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3837
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    const/4 v0, 0x0

    .line 3840
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecordingMenuTop()Z
    .locals 2

    .prologue
    .line 4261
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4262
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera.glwidget.TwGLCamcorderRecordingMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4267
    :goto_0
    return v0

    .line 4264
    :catch_0
    move-exception v0

    .line 4267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShotSlowMotionNeeded()Z
    .locals 1

    .prologue
    .line 2582
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isSlowMotionChanged(I)Z
    .locals 3
    .parameter "recordingMode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2567
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2576
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2571
    goto :goto_0

    .line 2573
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2574
    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isTouchAutoFocusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2166
    const-string v2, "176x144"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2174
    :cond_0
    :goto_0
    return v0

    .line 2170
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 2171
    const-string v1, "Camcorder"

    const-string v2, "!!!!!!!!!!!!!!!!!!check wrong case!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2174
    goto :goto_0
.end method

.method public isZoomAvailable(Z)Z
    .locals 3
    .parameter "popup"

    .prologue
    const/4 v0, 0x0

    .line 3003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 3017
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3030
    :cond_1
    :goto_0
    return v0

    .line 3021
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3026
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3030
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomNotSupportPopup()Z
    .locals 2

    .prologue
    .line 2987
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2996
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGallery(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValue"

    .prologue
    .line 3575
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 3576
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3687
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    packed-switch p1, :pswitch_data_0

    .line 3757
    :cond_0
    :goto_0
    return-void

    .line 3693
    :pswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    if-eqz p3, :cond_6

    .line 3694
    const/4 v8, 0x0

    .line 3695
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3696
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3698
    :cond_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3699
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3700
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3702
    .local v13, retriever:Landroid/media/MediaMetadataRetriever;
    const-wide/16 v9, 0x0

    .line 3703
    .local v9, dateTaken:J
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3704
    .local v14, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, p0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3705
    const-string v2, "datetaken"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3706
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_2

    .line 3707
    const-string v2, "date_modified"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v9, v2, v4

    .line 3708
    const-string v2, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3710
    :cond_2
    const-string v2, "mime_type"

    const-string v3, "video/3gpp"

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    const-string v2, "duration"

    const/16 v3, 0x9

    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3721
    :try_start_1
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3727
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 3728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 3741
    .end local v9           #dateTaken:J
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_2
    if-eqz v8, :cond_0

    .line 3742
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3722
    .restart local v9       #dateTaken:J
    .restart local v13       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 3723
    .local v12, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3715
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 3716
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "Camcorder"

    const-string v3, "setDataSource failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3721
    :try_start_3
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3722
    :catch_2
    move-exception v12

    .line 3723
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3717
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v12

    .line 3718
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3721
    :try_start_5
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3722
    :catch_4
    move-exception v12

    .line 3723
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3720
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 3721
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3724
    :goto_3
    throw v2

    .line 3722
    :catch_5
    move-exception v12

    .line 3723
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 3729
    .end local v9           #dateTaken:J
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 3730
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3731
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 3732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 3733
    :cond_4
    const-string v2, "specify-data"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3734
    const-string v2, "Camcorder"

    const-string v3, "setResult OK !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setResult(I)V

    .line 3736
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 3738
    :cond_5
    const-string v2, "Camcorder"

    const-string v3, "Something goes wrong!! Restart attach mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3744
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_6
    if-nez p2, :cond_0

    .line 3745
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3747
    :try_start_7
    const-string v2, "Camcorder"

    const-string v3, "Deleting cancelled attach image"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 3750
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 3691
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .locals 1
    .parameter "antishake"

    .prologue
    .line 2470
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSnapshotLimitationDialog()V

    .line 2474
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 2475
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 1
    .parameter "audioRecording"

    .prologue
    .line 2708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2709
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 1
    .parameter "autocontrast"

    .prologue
    .line 2445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 2446
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 2554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2555
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZZ)V
    .locals 4
    .parameter "speed"
    .parameter "isSubMenu"
    .parameter "fromResetSettings"

    .prologue
    .line 2614
    iput-boolean p2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 2615
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderSpeedMenuSelect speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    if-eqz p3, :cond_1

    .line 2618
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2622
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2623
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSpeedControlReset(II)Z

    move-result v0

    .line 2625
    .local v0, resetCamcorder:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingSpeed(I)V

    .line 2627
    if-eqz v0, :cond_0

    .line 2628
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2631
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x7e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2634
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 631
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 636
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 646
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 647
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 2731
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 2732
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->showDialog(I)V

    .line 2737
    :goto_0
    return-void

    .line 2734
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 2713
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 664
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 665
    const-string v2, "Camcorder"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 672
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 675
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 676
    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 679
    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 680
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 682
    new-instance v2, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    .line 695
    .local v0, recordingMode:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeGLSurfaceView()V

    .line 699
    new-instance v2, Landroid/media/AudioManager;

    invoke-direct {v2, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 701
    const v2, 0x7f0900fd

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 710
    new-instance v2, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 711
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1386
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1388
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 1391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1397
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 1405
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->clear()V

    .line 1410
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->clear()V

    .line 1415
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 1418
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1420
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1423
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_7

    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1425
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 1428
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_8

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearCaptureImageData()V

    .line 1430
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 1433
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1435
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 1438
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1439
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 1440
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1441
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1443
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1444
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1446
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 1447
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1448
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1449
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1450
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1452
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1453
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 4

    .prologue
    .line 2449
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 2455
    :cond_0
    const/16 v1, 0xbd1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2456
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_1

    .line 2457
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2458
    :cond_1
    return-void

    .line 2453
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2535
    if-eqz p1, :cond_0

    .line 2536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2538
    :cond_0
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectRecorderType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectRecorderType(I)V

    .line 2726
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2728
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 2256
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 2395
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 2462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 2464
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    .line 2465
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 2467
    :cond_0
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1931
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1937
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setFocusIndicator(I)V

    .line 1941
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1945
    const-string v0, "Camcorder"

    const-string v1, "onFocusStateChanged : disable focus indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1949
    :cond_4
    if-nez p1, :cond_7

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 1954
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_6

    .line 1960
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1963
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1964
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startAFHideRectTimer()V

    goto :goto_0
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 3895
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 3897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 3898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setGuideLineSize(Landroid/view/View;)V

    .line 3900
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 3904
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 3905
    const-string v0, "Camcorder"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :goto_0
    return-void

    .line 3909
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$12;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 3954
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 3
    .parameter "gps"

    .prologue
    .line 2756
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2757
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2774
    :goto_0
    return-void

    .line 2760
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2761
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isGpsEULAEnabledinCamcorder()V

    .line 2773
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0

    .line 2764
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->IsGpsEnableInSettings()V

    goto :goto_1

    .line 2767
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 2770
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2687
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 0

    .prologue
    .line 3765
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x12

    const/4 v5, 0x1

    .line 1457
    const-string v4, "Camcorder"

    const-string v7, "onKeyDown()"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move v2, p1

    .line 1462
    .local v2, fakeKeyCode:I
    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-ne p1, v4, :cond_4

    .line 1464
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-nez v4, :cond_3

    .line 1465
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1586
    :goto_0
    return v4

    .line 1470
    :cond_1
    const/16 v2, 0x1b

    .line 1472
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    .line 1485
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_5

    move v4, v5

    .line 1486
    goto :goto_0

    .line 1475
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    .line 1477
    goto :goto_0

    .line 1481
    :cond_4
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    goto :goto_1

    .line 1491
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/glview/TwGLContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    .line 1492
    goto :goto_0

    .line 1497
    :cond_6
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 1498
    goto :goto_0

    .line 1500
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1502
    goto :goto_0

    .line 1505
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    .line 1506
    goto :goto_0

    .line 1509
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    .line 1510
    goto :goto_0

    .line 1513
    :cond_9
    sparse-switch v2, :sswitch_data_0

    .line 1583
    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-eqz v4, :cond_15

    move v4, v5

    .line 1584
    goto :goto_0

    :sswitch_0
    move v4, v6

    .line 1515
    goto :goto_0

    :sswitch_1
    move v4, v5

    .line 1518
    goto :goto_0

    :sswitch_2
    move v4, v5

    .line 1525
    goto :goto_0

    .line 1535
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v4, v5

    .line 1536
    goto :goto_0

    .line 1538
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    .line 1539
    goto/16 :goto_0

    .line 1541
    :cond_d
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1542
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1543
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1544
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1545
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x5

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1547
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_f

    .line 1548
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1557
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_f
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resetFocusDueToZoom()V

    .line 1558
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1559
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 1562
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v4, :cond_11

    .line 1564
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1565
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1566
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_11
    move v4, v5

    .line 1569
    goto/16 :goto_0

    .line 1550
    .restart local v3       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x2

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1552
    .restart local v0       #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_f

    .line 1553
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_2

    .line 1571
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :sswitch_4
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_a

    .line 1572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1573
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 1574
    :cond_13
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1575
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    :cond_14
    move v4, v5

    .line 1576
    goto/16 :goto_0

    .line 1586
    :cond_15
    invoke-super {p0, v2, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1513
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_1
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x4f -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x9c -> :sswitch_3
        0x9d -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1636
    const-string v4, "Camcorder"

    const-string v6, "onKeyUp()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    move v2, p1

    .line 1639
    .local v2, fakeKeyCode:I
    const/4 v3, 0x0

    .line 1642
    .local v3, volumeKey:Z
    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-ne p1, v4, :cond_2

    .line 1644
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 1646
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1786
    :goto_0
    return v4

    .line 1649
    :cond_1
    const/16 v2, 0x1b

    .line 1650
    const/4 v3, 0x1

    .line 1652
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-eq v3, v4, :cond_2

    .line 1653
    const-string v4, "Camcorder"

    const-string v6, "Lost..."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_2
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    .line 1661
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_3

    move v4, v5

    .line 1662
    goto :goto_0

    .line 1666
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/glview/TwGLContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 1667
    goto :goto_0

    .line 1672
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1673
    const-string v4, "Camcorder"

    const-string v6, "Delivering onKeyUp to other view"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1674
    goto :goto_0

    .line 1676
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1678
    goto :goto_0

    .line 1681
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1682
    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 1683
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->dismissResetDialog()V

    :cond_6
    move v4, v5

    .line 1686
    goto :goto_0

    .line 1689
    :cond_7
    sparse-switch v2, :sswitch_data_0

    .line 1783
    if-eqz v3, :cond_17

    move v4, v5

    .line 1784
    goto :goto_0

    .line 1695
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_8

    .line 1696
    const/16 v4, 0x27

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, p0, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1697
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_8

    .line 1698
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_8
    move v4, v5

    .line 1700
    goto :goto_0

    .line 1704
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1706
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1712
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    .line 1713
    goto/16 :goto_0

    .line 1715
    :cond_a
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v4, :cond_b

    .line 1716
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v4, v5

    .line 1717
    goto/16 :goto_0

    .line 1720
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    .line 1721
    goto/16 :goto_0

    .line 1725
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_e

    .line 1727
    :cond_d
    const-string v4, "Camcorder"

    const-string v6, "isPrepareRecording, ignore shutter"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1728
    goto/16 :goto_0

    .line 1741
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    move v4, v5

    .line 1742
    goto/16 :goto_0

    .line 1744
    :sswitch_2
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1747
    const-string v4, "Camcorder"

    const-string v6, "event isCanceled() true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1748
    goto/16 :goto_0

    .line 1750
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingEngine()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1753
    :cond_10
    const-string v4, "Camcorder"

    const-string v6, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1754
    goto/16 :goto_0

    .line 1757
    :cond_11
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1758
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1759
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1762
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v4, v5

    .line 1763
    goto/16 :goto_0

    :sswitch_3
    move v4, v5

    .line 1766
    goto/16 :goto_0

    .line 1768
    :sswitch_4
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_13

    move v4, v5

    .line 1769
    goto/16 :goto_0

    .line 1771
    :cond_13
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    if-eq v4, v6, :cond_14

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    if-ne v4, v6, :cond_16

    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1772
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_1

    .line 1775
    :cond_15
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    move v4, v5

    .line 1776
    goto/16 :goto_0

    :cond_16
    move v4, v5

    .line 1778
    goto/16 :goto_0

    .line 1786
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1689
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .locals 10
    .parameter "keyValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3579
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    if-nez p1, :cond_1

    .line 3664
    :cond_0
    :goto_0
    return-void

    .line 3585
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3586
    const-string v5, "Camcorder"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3589
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 3590
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 3592
    const-string v5, "quickview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "reviewon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3594
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3595
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    #invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3597
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3598
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3599
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3604
    :goto_1
    const-string v5, "from-Camera"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3606
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3625
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_0

    .line 3601
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 3607
    :catch_0
    move-exception v1

    .line 3608
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camcorder"

    const-string v6, "Gallery was disabled!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 3626
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v5, "from_app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3627
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3628
    .local v3, newExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3630
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3631
    const-string v5, "noFaceDetection"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3632
    const-string v5, "video-thumbnail"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3633
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 3634
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3635
    .local v4, saveUri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3640
    .end local v4           #saveUri:Landroid/net/Uri;
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    if-eqz v5, :cond_6

    .line 3641
    const-string v5, "skip-savediscard"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3644
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3645
    const-string v5, "latitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3646
    const-string v5, "longitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3649
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 3650
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3651
    const-string v5, "weather"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWeather()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3654
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3655
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3657
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 3659
    const/16 v5, 0x7d2

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3662
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 3637
    :cond_9
    const-string v5, "attach-video"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 2910
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    return-void
.end method

.method public onModechanged()V
    .locals 2

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2273
    :goto_0
    return-void

    .line 2271
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 2272
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_0
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 2705
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    const-string v0, "Camcorder"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->PauseGLSurface()V

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->notifyOnPause()V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 847
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 856
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback()V

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->unregisterCallstateListener()V

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_7

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 875
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 886
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 890
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 897
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->onPause()V

    .line 905
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_8

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->onPause()V

    .line 908
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 910
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 912
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 913
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 928
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 929
    return-void

    .line 883
    :cond_9
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 865
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 2309
    return-void
.end method

.method public onRecordingModeMenuSelect(IZ)V
    .locals 5
    .parameter "recordingMode"
    .parameter "fromResetSettings"

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x0

    .line 2312
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->isSlowMotionChanged(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    .line 2316
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 2319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 2320
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2324
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2330
    if-nez p2, :cond_1

    .line 2331
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2334
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2335
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2342
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    if-eqz v0, :cond_3

    .line 2345
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2348
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2351
    const-string v0, "Camcorder"

    const-string v1, "onRecordingModeChanged out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    return-void

    .line 2339
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 2403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2404
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateIfResolutionChanged()V

    .line 2405
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 3680
    if-eqz p1, :cond_0

    .line 3681
    const-string v0, "last_video_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 3683
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3684
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const v14, 0x7f0900ee

    const/4 v12, 0x0

    const/16 v13, 0x68

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 972
    const-string v10, "Camcorder"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sput-boolean v9, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 991
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Security()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 993
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1009
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 1011
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->onResume()V

    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v10

    if-ne v10, v8, :cond_1

    .line 1014
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1019
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1020
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "torch_light"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v1, v8

    .line 1029
    .local v1, externalTorchEnabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraDuringCall()V

    .line 1033
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_VoIPCall()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1034
    :cond_3
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVoIPCalling:Z

    if-eq v10, v8, :cond_4

    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVtCalling:Z

    if-eq v10, v8, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1036
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1037
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1308
    :goto_1
    return-void

    .end local v1           #externalTorchEnabled:Z
    :cond_5
    move v1, v9

    .line 1028
    goto :goto_0

    .line 1041
    .restart local v1       #externalTorchEnabled:Z
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_7

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1043
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    .line 1049
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1061
    .local v7, win:Landroid/view/Window;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_8

    .line 1062
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 1063
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1081
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1082
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v10, :cond_9

    .line 1083
    const-string v10, ""

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 1085
    :cond_9
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v11, 0x7f0900e6

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 1086
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1096
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1097
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1098
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1101
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1103
    :cond_a
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1104
    const-string v10, "Camcorder"

    const-string v11, "onResume MICROPHONE disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const v10, 0x10401e7

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1107
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1111
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1113
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1114
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1121
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 1124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->registerCallStateListener()V

    .line 1126
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1127
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1132
    :cond_d
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1135
    .local v3, myExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 1136
    const-string v10, "from_app"

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1138
    if-eqz v3, :cond_26

    .line 1139
    const-string v10, "skip-savediscard"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 1141
    const-string v10, "mms"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1142
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1144
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1145
    .local v4, sizelimit:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 1146
    const-string v10, "Camcorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume onMaxsize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1149
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1150
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1045
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #myExtras:Landroid/os/Bundle;
    .end local v4           #sizelimit:J
    .end local v7           #win:Landroid/view/Window;
    :cond_e
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_2

    .line 1089
    .restart local v7       #win:Landroid/view/Window;
    :cond_f
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-eqz v10, :cond_10

    .line 1090
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1092
    :cond_10
    sput-object v12, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 1153
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #myExtras:Landroid/os/Bundle;
    :cond_11
    const-string v10, "videocall_preset"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1218
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1224
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_13

    .line 1225
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_29

    .line 1226
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1227
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1228
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1235
    :cond_13
    :goto_5
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1236
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 1237
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    .line 1239
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/16 v11, 0x82

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1243
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    .line 1256
    :cond_16
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1257
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1260
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    .line 1261
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v11, 0x65

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1265
    :cond_17
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mbNeedToStartEngineSync:Z

    .line 1267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1269
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 1270
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1272
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_18

    .line 1273
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refresh()V

    .line 1274
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 1277
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 1279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v9

    if-ne v9, v8, :cond_19

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    const/16 v9, 0x79

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1282
    :cond_19
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 1293
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_1a

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSideMenuItems()V

    .line 1295
    :cond_1a
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_1b

    .line 1296
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 1307
    :cond_1b
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1161
    :cond_1c
    const-string v10, "video_editor"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-ne v10, v8, :cond_1d

    .line 1168
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1164
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 1167
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 1172
    :cond_1f
    const-string v10, "email"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1174
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1175
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1178
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1183
    :cond_21
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    .line 1184
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 1185
    .local v6, value:I
    const/16 v10, 0x12

    if-eq v6, v10, :cond_25

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v10

    if-nez v10, :cond_23

    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1188
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1194
    .end local v6           #value:I
    :cond_24
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1197
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1198
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1190
    .restart local v6       #value:I
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_7

    .line 1203
    .end local v6           #value:I
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_4

    .line 1208
    :cond_27
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-nez v10, :cond_28

    .line 1211
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1212
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    goto/16 :goto_4

    .line 1231
    :cond_29
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_5
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "cameraReview"

    .prologue
    .line 2690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2692
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 2717
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3671
    if-eqz p1, :cond_0

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3673
    const-string v0, "last_video_uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3676
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3677
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .parameter "s"

    .prologue
    const v5, 0x7f080006

    const/4 v8, 0x1

    const/high16 v4, 0x3f80

    const/4 v7, 0x0

    .line 1969
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2042
    :goto_0
    return v7

    .line 1973
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_BlockPinchZoom"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1974
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1976
    .local v0, mScaleFactor:F
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMaxScaleFactor:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1978
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMaxScaleFactor:F

    .line 1981
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMinScaleFactor:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 1983
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMinScaleFactor:F

    .line 1986
    :cond_2
    sub-float v2, v0, v4

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 1987
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    sub-float v3, v0, v4

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    .line 1992
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1994
    .local v1, mZoom:I
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    if-eqz v2, :cond_3

    if-ltz v1, :cond_3

    .line 1995
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    .line 1998
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-gt v1, v2, :cond_4

    .line 1999
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    .line 2002
    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    if-eqz v2, :cond_5

    .line 2003
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 2004
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMax:F

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    .line 2008
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    if-eqz v2, :cond_6

    .line 2009
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 2010
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMin:F

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    .line 2014
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2019
    .end local v0           #mScaleFactor:F
    .end local v1           #mZoom:I
    :goto_2
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    if-gez v2, :cond_9

    .line 2020
    iput v7, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2021
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMin:F

    .line 2022
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    .line 2028
    :goto_3
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    sget v3, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v2, v3, :cond_a

    .line 2029
    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 2030
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMax:F

    .line 2031
    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    .line 2036
    :goto_4
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 2038
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2039
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 2040
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2041
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1989
    .restart local v0       #mScaleFactor:F
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    add-float/2addr v2, v0

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    goto/16 :goto_1

    .line 2016
    .end local v0           #mScaleFactor:F
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    goto/16 :goto_2

    .line 2025
    :cond_9
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    goto :goto_3

    .line 2033
    :cond_a
    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    goto :goto_4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2046
    const-string v4, "Camcorder"

    const-string v5, "onScaleBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return v2

    .line 2052
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2056
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resetFocusDueToZoom()V

    .line 2058
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2059
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_BlockPinchZoom"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 2061
    iput v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMin:F

    .line 2062
    iput v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSumMax:F

    .line 2063
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMin:Z

    .line 2064
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMax:Z

    .line 2065
    iput v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCallbackValueSum:F

    .line 2070
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v4, :cond_2

    .line 2071
    new-instance v4, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2072
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2073
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2074
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2077
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2078
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2079
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2083
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2084
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2085
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2087
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    move v2, v3

    .line 2088
    goto/16 :goto_0

    .line 2067
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    goto :goto_1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2092
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2094
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2478
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2481
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :goto_0
    return-void

    .line 2485
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 2488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2490
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera()V

    .line 2492
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 2493
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 2495
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2497
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 2721
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 2905
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilterBattery()V

    .line 2906
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2701
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 3228
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3230
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 3231
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3232
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3235
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 3236
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 3237
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 2399
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0xbd3

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1790
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 1907
    :goto_0
    return v2

    .line 1794
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 1795
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 1804
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1805
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-nez v2, :cond_1

    move v2, v3

    .line 1806
    goto :goto_0

    .line 1811
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1812
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 1813
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v2, v3

    .line 1815
    goto :goto_0

    .line 1817
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v2, v3

    .line 1819
    goto :goto_0

    .line 1822
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 1823
    goto :goto_0

    .line 1826
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 1827
    goto :goto_0

    .line 1830
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    .line 1831
    goto :goto_0

    .line 1833
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_9

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1835
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1839
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move v2, v3

    .line 1841
    goto :goto_0

    .line 1848
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1907
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1850
    :pswitch_0
    const-string v2, "Camcorder"

    const-string v4, "MotionEvent.ACTION_DOWN"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTouchAutoFocusEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v4

    if-lt v2, v4, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getRight()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1853
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1854
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopAFHideRectTimer()V

    .line 1855
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1856
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 1857
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1858
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    :cond_b
    move v2, v3

    .line 1862
    goto/16 :goto_0

    .line 1864
    :pswitch_1
    const-string v2, "Camcorder"

    const-string v4, "MotionEvent.ACTION_UP"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_f

    .line 1866
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1867
    iput v5, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 1868
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    .line 1869
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 1870
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleAutoFocus()V

    .line 1871
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 1872
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1874
    const-string v2, "Camcorder"

    const-string v4, "hideCAFButton for slow&fast motion"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v7, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 1876
    .local v1, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v1, :cond_c

    .line 1877
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    :cond_c
    move v2, v3

    .line 1878
    goto/16 :goto_0

    .line 1881
    .end local v1           #glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v7, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 1882
    .restart local v1       #glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v1, :cond_e

    .line 1883
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showCAFButton()V

    .end local v1           #glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    :cond_e
    move v2, v3

    .line 1885
    goto/16 :goto_0

    .line 1889
    :cond_f
    :pswitch_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v2, :cond_10

    .line 1890
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1891
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    if-le v2, v6, :cond_10

    .line 1892
    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/camera/Camcorder;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V

    :cond_10
    move v2, v3

    .line 1895
    goto/16 :goto_0

    .line 1898
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 1899
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1900
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1901
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    move v2, v3

    .line 1902
    goto/16 :goto_0

    .line 1836
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 1848
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onVideoRecordingStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3255
    const-string v3, "Camcorder"

    const-string v4, "onVideoRecordingStart"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v4, 0xbd3

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3258
    .local v1, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v1, :cond_0

    .line 3259
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3260
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showMenu()V

    .line 3261
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->startTimer()V

    .line 3262
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3263
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    .line 3267
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v3, :cond_3

    .line 3269
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xc1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;

    .line 3270
    .local v2, slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    if-eqz v2, :cond_1

    .line 3271
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->hideMenu()V

    .line 3273
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xc1f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;

    .line 3274
    .local v0, fastControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
    if-eqz v0, :cond_2

    .line 3275
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->hideMenu()V

    .line 3278
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3281
    .end local v0           #fastControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
    .end local v2           #slowControlMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3282
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->sendHideFocusRectMessage()V

    .line 3285
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3286
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v4, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    sget v5, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3289
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 3290
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3291
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3471
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_0

    .line 3477
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3481
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_2

    .line 3533
    :cond_1
    :goto_0
    return-void

    .line 3485
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->isFocusIndicatorShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3487
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    .line 3488
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 3492
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3494
    new-instance v0, Lcom/sec/android/app/camera/RecordingData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/RecordingData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3495
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x168

    invoke-static {v1, v2, v3, v5}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingData;->setRecordingData(Landroid/graphics/Bitmap;)V

    .line 3497
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-nez v0, :cond_4

    .line 3498
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V

    .line 3501
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3502
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 3503
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3506
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3508
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3509
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_8

    .line 3510
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 3511
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 3512
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 3526
    :cond_6
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_7

    .line 3527
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 3530
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v1, -0x32

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_1

    .line 3531
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto/16 :goto_0

    .line 3514
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    goto :goto_1

    .line 3517
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_a

    .line 3518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 3519
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_1

    .line 3522
    :cond_a
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_1
.end method

.method public onVideoStoringFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3536
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_1

    .line 3563
    :cond_0
    :goto_0
    return-void

    .line 3545
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->isFocusIndicatorShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3547
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    .line 3548
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 3552
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3555
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 3556
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3559
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3560
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_0

    .line 3561
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_0
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 2
    .parameter "voicecommand"

    .prologue
    .line 2695
    const-string v0, "Camcorder"

    const-string v1, "onVoiceCommandMenuSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 2697
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 1
    .parameter "volumeKey"

    .prologue
    .line 2740
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 2741
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2521
    if-eqz p1, :cond_0

    .line 2522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2524
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1361
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWindowFocusChanged(Z)V

    .line 1362
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2262
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback_TimerBgm()V
    .locals 4

    .prologue
    .line 620
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 622
    return-void
.end method

.method public playCameraSound(II)V
    .locals 8
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2933
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :goto_0
    return-void

    .line 2937
    :cond_1
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCameraSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    const/16 v7, 0xf

    .line 2941
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 2949
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 2950
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2951
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 2955
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2961
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method

.method public reAlignForPreview()V
    .locals 3

    .prologue
    .line 2886
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2888
    .local v0, previewLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 2890
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2902
    :goto_0
    return-void

    .line 2899
    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 3464
    :cond_0
    return-void
.end method

.method public resetIndicatorTimerDrift()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3295
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3296
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3297
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2390
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 2391
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetPosIndicator()V

    .line 1928
    :cond_0
    return-void
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2105
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 2110
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2111
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2113
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2121
    :goto_0
    return-void

    .line 2119
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startContinuousAF()V

    goto :goto_0
.end method

.method public resetShotSlowMotionNeeded()V
    .locals 1

    .prologue
    .line 2589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsShotSlowMotionNeeded:Z

    .line 2590
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 3387
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 3389
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResetSettings()V

    .line 3391
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 3392
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 3394
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3395
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3439
    const-string v0, "Camcorder"

    const-string v1, "resetTouchFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3441
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 3446
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3458
    :goto_0
    return-void

    .line 3449
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 3450
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 3452
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3453
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 3455
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 3456
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 3457
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    goto :goto_0
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 7

    .prologue
    .line 2826
    const-string v4, "Camcorder"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const/4 v1, 0x0

    .line 2832
    .local v1, result:Z
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2835
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2839
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2869
    :pswitch_0
    const/16 v3, 0x280

    .line 2870
    .local v3, screenWidth:I
    const/16 v2, 0x1e0

    .line 2873
    .local v2, screenHeight:I
    :goto_0
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v1

    .line 2881
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2882
    return v1

    .line 2841
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2842
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2843
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 2845
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2846
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2847
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 2849
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2850
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2851
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2853
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2854
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2855
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2857
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2858
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2859
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2861
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2862
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2863
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2865
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2866
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2867
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2839
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public restartInactivityTimer()V
    .locals 1

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4238
    :goto_0
    return-void

    .line 4236
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopInactivityTimer()V

    .line 4237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startInactivityTimer()V

    goto :goto_0
.end method

.method public resumeAudioPlayback_TimerBgm()V
    .locals 2

    .prologue
    .line 625
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 627
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setConnectingStateGPS(I)V

    .line 3891
    :cond_0
    return-void
.end method

.method public setContinuousAF()V
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 2549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2550
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 3382
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateUIWhenDefaultLayout()V

    .line 3383
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4318
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 4319
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 4320
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 4221
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 4222
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 3668
    return-void
.end method

.method public setPinupMode(Z)V
    .locals 0
    .parameter "pinupMode"

    .prologue
    .line 4430
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsPinupMode:Z

    .line 4431
    return-void
.end method

.method public setRecordingStopAvailable(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 2609
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 2610
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setSelectedMenuId(I)V

    .line 4218
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2151
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 2155
    return-void
.end method

.method public setWeatherConnect(Z)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 4420
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v0, :cond_0

    .line 4421
    if-eqz p1, :cond_1

    .line 4422
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Connect()V

    .line 4427
    :cond_0
    :goto_0
    return-void

    .line 4424
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    goto :goto_0
.end method

.method public showAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showAudioOffIndicator()V

    .line 2602
    :cond_0
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4242
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showEditBackground(Z)V

    .line 4244
    :cond_0
    return-void
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(I)V

    .line 2147
    :cond_0
    return-void
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 4213
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showShutterButton()V

    .line 4214
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenu()V

    .line 4206
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenuItems()V

    .line 4198
    return-void
.end method

.method public showSnapshotLimitationDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 4362
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4397
    :cond_0
    :goto_0
    return-void

    .line 4365
    :cond_1
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSnapshotLimitationDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 4367
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4368
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4370
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4371
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4372
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 4374
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4376
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4377
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4378
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4379
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4380
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4382
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$17;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$17;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4389
    const v5, 0x7f0900a2

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$18;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4394
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 4395
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWaitingAnimation()V
    .locals 0

    .prologue
    .line 1631
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 1632
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 1923
    :cond_0
    return-void
.end method

.method public startContinuousAF()V
    .locals 4

    .prologue
    .line 4323
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v1, :cond_1

    .line 4332
    :cond_0
    :goto_0
    return-void

    .line 4326
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->startContinuousAF()V

    .line 4327
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4328
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 4329
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 4330
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto :goto_0
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 3982
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v1, :cond_0

    .line 3983
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v1, :cond_1

    .line 3985
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4080
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3988
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 3989
    .local v0, orientation:I
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 3993
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3994
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4077
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3982
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startPostRecordingSnapAnimation(I)V
    .locals 7
    .parameter "orientationForPicture"

    .prologue
    .line 4129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4135
    :cond_0
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4136
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4137
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$14;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4154
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4156
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V

    .line 4157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_1

    .line 4158
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4159
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 4160
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4167
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 4129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 4336
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopContinuousAF()V

    .line 4337
    :cond_0
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x68

    .line 2408
    const-string v0, "Camcorder"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    const-string v0, "Camcorder"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2415
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2420
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2423
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2429
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2430
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2432
    :cond_1
    return-void
.end method

.method public updateRecordingMenu()V
    .locals 4

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3346
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3347
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3348
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 3350
    :cond_0
    return-void
.end method

.method public updateRemainTime()V
    .locals 2

    .prologue
    .line 3772
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 3773
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3774
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 3776
    :cond_0
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 2436
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideBackground()V

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2439
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 4

    .prologue
    .line 3398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 3400
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3401
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3402
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v0, :cond_0

    .line 3403
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3405
    :cond_0
    if-eqz v1, :cond_1

    .line 3406
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3407
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3409
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3410
    return-void
.end method

.method public updateUIWhenResetSettings()V
    .locals 6

    .prologue
    const/16 v5, 0xbd1

    .line 3413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 3414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 3415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 3416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 3417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 3418
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3419
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3421
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3422
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 3423
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3430
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xbd2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3431
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v2, :cond_1

    .line 3432
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3433
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3435
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3436
    return-void

    .line 3425
    .end local v2           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 3426
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_0

    .line 3427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2506
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2512
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2514
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    .line 2517
    :cond_0
    return-void
.end method

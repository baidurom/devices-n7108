.class public Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final INK_DISABLE:I = 0x0

.field private static final INK_ENABLE:I = 0x1

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_DISATANCE:D

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private h:Ljava/nio/FloatBuffer;

.field private h_buf:I

.field private h_handle:I

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUnlocked:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mInkEffectColor:I

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mRippleSoundVolume:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private mWallpaperPath:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/16 v4, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 95
    const-string v3, "CircleUnlockRippleRenderer"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 97
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 100
    const-string v3, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aHeights;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uMESH_SIZE_WIDTH;\n uniform float uMESH_SIZE_HEIGHT;\n uniform float uNUM_DETAILS_WIDTH;\n uniform float uNUM_DETAILS_HEIGHT;\n uniform float uRefractiveIndex;\n uniform float uRotate;\n void main() { \n  float maxX = uMESH_SIZE_WIDTH / 2.0; \n  float maxY = uMESH_SIZE_HEIGHT / 2.0; \n  float rimo = uRefractiveIndex - 1.0;\n   vec4 pos = aPosition;\n  vec4 heights = aHeights; \n  float len = heights.x; \n  vec3 v = vec3( pos.x, pos.y, len * 0.25 ); \n  vec2 n = ( vec2( len ) - heights.yz ) * 0.25; \n  float nz = sqrt(dot( n, n ) + 1.0 ); \n  n = n / nz; \n  vec3 d = vec3( v.x, v.y, v.z + 30.0 ); \n   len = sqrt( dot( d, d ) ); \n  d = d / len; \n  float t = dot( d, vec3( n.x, n.y, 1.0 ) ) * rimo; \n  d.x += n.x * t; \n  d.y += n.y * t; \n  float r0, u0, v0; \n  r0 = ( 30.9 - v.z ) / d.z; \n  u0 = ( d.x * r0 + v.x ) / maxX * 0.25 + 0.5; \n  v0 = ( d.y * r0 + v.y ) / maxY * -0.25 + 0.5; \n  float uxx = n.x * 0.5 + 0.5 + pos.y / uMESH_SIZE_WIDTH * 0.25; \n  float vxx = n.y * 0.5 + 0.5 + pos.x / uMESH_SIZE_HEIGHT * 0.25; \n  vTexture0Coord = vec2( uxx, vxx ); \n  vTexture1Coord = vec2( u0, v0 ); \n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    .line 149
    const-string v3, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 167
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 168
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 170
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 171
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 173
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 174
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 176
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 185
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 186
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 187
    new-array v3, v6, [S

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 211
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    .line 212
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 213
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    .line 214
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 226
    const v3, 0x3f6e147b

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 227
    const v3, 0x3e051eb8

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 228
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 229
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 234
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 235
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 240
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 241
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 250
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 251
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 255
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 256
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 259
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 260
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 263
    const/high16 v3, -0x3dd0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 264
    const/high16 v3, -0x3e48

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 267
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 268
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 269
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 270
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 273
    const/high16 v3, 0x4234

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 274
    const/high16 v3, 0x41c8

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 275
    const/high16 v3, 0x41c8

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 276
    const/high16 v3, 0x4238

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 277
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 278
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 281
    const/high16 v3, 0x42c8

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 282
    const/high16 v3, 0x42c8

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 287
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 294
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 295
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 296
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 297
    const/high16 v3, 0x4416

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 298
    const/high16 v3, 0x44a0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 299
    const/high16 v3, 0x4416

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 300
    const/high16 v3, 0x44a0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 301
    const/16 v3, 0x19

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 304
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 305
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 306
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 307
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 308
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 309
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 310
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 311
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 316
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRippleSoundVolume:F

    .line 319
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 320
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 321
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 322
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 325
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 326
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 327
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 329
    const-wide/high16 v3, 0x4072

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 330
    const-wide/high16 v3, 0x407b

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 331
    const-wide v3, 0x4062c00000000000L

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 333
    const-wide/high16 v3, 0x406b

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 334
    const-wide/high16 v3, 0x406b

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    .line 335
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 336
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 337
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 339
    const-wide/high16 v3, 0x403e

    iput-wide v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    .line 345
    const/16 v3, 0x50

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 347
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 360
    const/16 v3, 0x9

    new-array v3, v3, [[F

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    aput-object v4, v3, v6

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    aput-object v4, v3, v7

    const/4 v4, 0x4

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v7, [F

    fill-array-data v5, :array_5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v7, [F

    fill-array-data v5, :array_6

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v7, [F

    fill-array-data v5, :array_7

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v7, [F

    fill-array-data v5, :array_8

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 371
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 372
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 386
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 389
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 391
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 392
    new-instance v3, Landroid/media/SoundPool;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v8, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 393
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 395
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 399
    const-string v3, "CircleUnlockRippleRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInkEffectColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-nez v3, :cond_1

    .line 406
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "No S-Pen Mode, INK DISABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sput-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    .line 421
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 422
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 423
    .local v2, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 424
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 425
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 428
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 430
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 432
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 435
    :cond_0
    return-void

    .line 400
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #mWindowManager:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "S-Pen Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sput-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    goto :goto_1

    .line 417
    :cond_2
    const-string v3, "CircleUnlockRippleRenderer"

    const-string v4, "No S-Pen Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sput-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    goto :goto_1

    .line 360
    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ct
        0x29t 0x5ct 0x8ft 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xc4t 0xc3t 0x43t 0x3ft
        0x83t 0x82t 0x2t 0x3ft
        0x8dt 0x8ct 0xct 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xc4t 0xc3t 0x43t 0x3ft
        0x9ct 0x9bt 0x1bt 0x3ft
        0xb5t 0xb4t 0xb4t 0x3et
    .end array-data

    :array_3
    .array-data 0x4
        0xddt 0xdct 0xdct 0x3et
        0xa1t 0xa0t 0x20t 0x3ft
        0xddt 0xdct 0x5ct 0x3et
    .end array-data

    :array_4
    .array-data 0x4
        0xc9t 0xc8t 0xc8t 0x3dt
        0xc9t 0xc8t 0xc8t 0x3et
        0xbat 0xb9t 0x39t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0xa1t 0xa0t 0xa0t 0x3dt
        0xb5t 0xb4t 0x34t 0x3et
        0xddt 0xdct 0xdct 0x3et
    .end array-data

    :array_6
    .array-data 0x4
        0xa1t 0xa0t 0xa0t 0x3et
        0xf1t 0xf0t 0x70t 0x3et
        0xb5t 0xb4t 0x34t 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0xddt 0xdct 0x5ct 0x3et
        0xf1t 0xf0t 0xf0t 0x3dt
        0xf1t 0xf0t 0x70t 0x3dt
    .end array-data

    :array_8
    .array-data 0x4
        0xb5t 0xb4t 0xb4t 0x3et
        0xa1t 0xa0t 0x20t 0x3ft
        0xb5t 0xb4t 0x34t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1786
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1787
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1791
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1799
    :goto_0
    if-ne v2, v4, :cond_0

    .line 1800
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1804
    :goto_1
    return-void

    .line 1793
    :catch_0
    move-exception v1

    .line 1795
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1802
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1748
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .line 1750
    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    .line 1761
    :cond_0
    return-void

    .line 1753
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 1757
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1758
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    .line 1759
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    .line 1757
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1299
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1301
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1370
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1372
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 1398
    :cond_0
    :goto_0
    return v2

    .line 1376
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1378
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 1379
    goto :goto_0

    .line 1382
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1384
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 1386
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1387
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1388
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1389
    new-array v0, v6, [I

    .line 1390
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1392
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1393
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1394
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1439
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1440
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1441
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1442
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1443
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1448
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1449
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1450
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1451
    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1824
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1829
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapOriginal == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1834
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 1840
    :cond_3
    :goto_0
    return-void

    .line 1837
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8893

    const v3, 0x8892

    const/4 v2, 0x0

    .line 1317
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1318
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1321
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1324
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1326
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1327
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1329
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1330
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1331
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1332
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1333
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1334
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1335
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1336
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1338
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1403
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1405
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1407
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1408
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1409
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1410
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1412
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1413
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1414
    const/4 v1, 0x0

    .line 1418
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    .line 1423
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    .line 1424
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aHeights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    .line 1425
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    .line 1426
    return-void
.end method

.method private loadTexture()V
    .locals 6

    .prologue
    const v5, 0x47012f00

    const/4 v4, 0x1

    const v3, 0x46180400

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 1343
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 1344
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1346
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    .line 1347
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1348
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1349
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1350
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1353
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1355
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    .line 1357
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1358
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1359
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1361
    const/16 v0, 0x2802

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1362
    const/16 v0, 0x2803

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1364
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1366
    return-void
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    .line 1305
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    .line 1306
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    .line 1311
    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1585
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1586
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1587
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1588
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1593
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1594
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1595
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 1596
    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1459
    const/4 v3, 0x1

    .line 1460
    .local v3, xSpan:I
    const/4 v2, 0x1

    .line 1462
    .local v2, ySpan:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v0, v1, :cond_1

    .line 1463
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1464
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1465
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1466
    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1474
    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->move([F[FIIIIIILjava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1476
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    if-lez v0, :cond_5

    .line 1477
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1479
    sget-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2

    .line 1481
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v12}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1484
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    :goto_1
    move v9, v2

    .local v9, i:I
    :goto_2
    if-ge v9, v4, :cond_5

    .line 1495
    move v11, v3

    .local v11, j:I
    :goto_3
    if-ge v11, v5, :cond_3

    .line 1496
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v0, v11

    add-int v10, v0, v9

    .line 1497
    .local v10, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v13, v0, v10

    .line 1498
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v13, v0, v10

    .line 1495
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1468
    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v9           #i:I
    .end local v10           #idx:I
    .end local v11           #j:I
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1469
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1470
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1471
    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto :goto_0

    .line 1490
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v12}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1491
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1494
    .restart local v9       #i:I
    .restart local v11       #j:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1503
    .end local v9           #i:I
    .end local v11           #j:I
    :cond_4
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1506
    :cond_5
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v9, v0, :cond_7

    .line 1507
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_5
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v11, v0, :cond_6

    .line 1508
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v9

    mul-int/lit8 v10, v0, 0x3

    .line 1509
    .restart local v10       #idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1510
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1511
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1507
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1506
    .end local v10           #idx:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1514
    .end local v11           #j:I
    :cond_7
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1563
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1564
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1565
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1566
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1567
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1568
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1569
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1570
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1571
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1572
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1573
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1574
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1575
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1576
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1577
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1578
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1579
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1580
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1581
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    .line 1219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRippleSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRippleSoundVolume:F

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1221
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1222
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;I)V

    .line 1223
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1225
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    .line 1210
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRippleSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRippleSoundVolume:F

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1213
    :cond_0
    return-void
.end method

.method private recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1844
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1847
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1850
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1855
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1858
    :cond_1
    return-void
.end method

.method private ripple(FFF)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1528
    return-void
.end method

.method private setBackground(Z)V
    .locals 10
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1877
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_wallpaper_path_ripple"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1878
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1879
    const-string v7, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1882
    :cond_0
    const/4 v3, 0x0

    .line 1883
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v6, wallpaperFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1886
    const-string v7, "CircleUnlockRippleRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWallpaperPath ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v7, "CircleUnlockRippleRenderer"

    const-string v8, "wallpaperFile exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1907
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1908
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1909
    .local v5, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1910
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1927
    .end local v5           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1928
    if-eqz p1, :cond_1

    .line 1929
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080618

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1937
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #wallpaperFile:Ljava/io/File;
    :cond_1
    :goto_2
    return-void

    .line 1892
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v6       #wallpaperFile:Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v7, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1893
    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1896
    const-string v7, "CircleUnlockRippleRenderer"

    const-string v8, "defaultWallpaperFileMultiCSC exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1898
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1899
    const-string v7, "CircleUnlockRippleRenderer"

    const-string v8, "defaultWallpaperFile exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1902
    :cond_4
    const-string v7, "CircleUnlockRippleRenderer"

    const-string v8, "keyguard_default_wallpaper exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080402

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 1913
    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    :cond_5
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1915
    .local v4, pBitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_6

    .line 1917
    const-string v7, "CircleUnlockRippleRenderer"

    const-string v8, "pBitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080402

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1919
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1922
    :cond_6
    if-eqz v4, :cond_7

    .line 1923
    const-string v7, "CircleUnlockRippleRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pBitmap, getWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pBitmap.getHeight() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1932
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #pBitmap:Landroid/graphics/Bitmap;
    .end local v6           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1934
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1864
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080618

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1865
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :goto_0
    return-void

    .line 1867
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1868
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    .line 440
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    .line 442
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 443
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 444
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 445
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 446
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 447
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 448
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 451
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 452
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 456
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 457
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 460
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 461
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 464
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 465
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 468
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 469
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 470
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 471
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 474
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 475
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 476
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 477
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 478
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 479
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 482
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 483
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 484
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 485
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 486
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 487
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 488
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 489
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 490
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 728
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 731
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 732
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 736
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 739
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 740
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 744
    :cond_3
    return-void

    .line 493
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_7

    .line 496
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 497
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 499
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 500
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 501
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 502
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 503
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 506
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 507
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 511
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 512
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 515
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 516
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 519
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 520
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 523
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 524
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 525
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 526
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 529
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 530
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 531
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 532
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 533
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 534
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 537
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 538
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 539
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 540
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 541
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 542
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 543
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 544
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 545
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 546
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 547
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 548
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 549
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 550
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 554
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_a

    .line 557
    :cond_9
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 558
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 559
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 560
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 561
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 562
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 563
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 566
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 567
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 571
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 572
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 575
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 576
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 579
    const v0, -0x3ddacccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 580
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 583
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 584
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 585
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 586
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 589
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 590
    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 591
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 592
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 593
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 594
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 597
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 598
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 599
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 600
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 601
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 602
    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 603
    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 604
    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 605
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    .line 610
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_d

    .line 613
    :cond_c
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 614
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 615
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 616
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 617
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 618
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 619
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 622
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 623
    const v0, 0x3f59999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 627
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 628
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 631
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 632
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 635
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 636
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 639
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 640
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 641
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 642
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 645
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 646
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 647
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 648
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 651
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 652
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 653
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 654
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 655
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 656
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 657
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 658
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 659
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 661
    const-wide/high16 v0, 0x4068

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 662
    const-wide/high16 v0, 0x4075

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 663
    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 664
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 665
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 670
    :cond_d
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 671
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 672
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 673
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 674
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 675
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 676
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 679
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 680
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 684
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 685
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 688
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 689
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 692
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 693
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 696
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 697
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 698
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 699
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 702
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 703
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 704
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 705
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 706
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 707
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 710
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 711
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 712
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 713
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 714
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 715
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 716
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 717
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 718
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 720
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 721
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 722
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 723
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 724
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    .line 1724
    const/4 v1, 0x0

    .line 1725
    .local v1, tempX:F
    move v2, p1

    .line 1727
    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    .line 1729
    int-to-float v1, v0

    .line 1730
    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1731
    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1735
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1737
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1601
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 1807
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1815
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->recycleBitmap()V

    .line 1816
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    .line 1547
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    .line 959
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event  action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 968
    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_1

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 975
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x4002

    const/16 v2, 0x4002

    if-ne v1, v2, :cond_1

    .line 977
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 981
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 983
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 984
    const/4 v1, 0x0

    .line 1150
    :goto_0
    return v1

    .line 988
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 990
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 991
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 992
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 997
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_7

    .line 999
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1000
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1001
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1002
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1013
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9

    .line 1015
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_5

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_4

    .line 1022
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 1030
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1034
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_8

    .line 1036
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 1037
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 1046
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1047
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1048
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1049
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 1050
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 1052
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1054
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1055
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1150
    :cond_6
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1006
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1007
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1008
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1009
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 1041
    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 1042
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    .line 1057
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 1059
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .line 1060
    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .line 1061
    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .line 1062
    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 1063
    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 1064
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .line 1065
    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .line 1066
    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v10, v1

    .line 1067
    .local v10, distForwWave:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    float-to-int v2, v10

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1068
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 1069
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 1071
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_b

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_a

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 1076
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1080
    :cond_a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1081
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1082
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1086
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    .line 1088
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1091
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1092
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 1093
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 1095
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_6

    .line 1097
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .line 1103
    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:F
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1105
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1107
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_e

    .line 1109
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_d

    .line 1110
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1112
    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1113
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1114
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1117
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_12

    .line 1118
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    .line 1119
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_10

    .line 1120
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1122
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1123
    .restart local v13       #dx:F
    float-to-double v1, v13

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_11

    .line 1124
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1126
    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1127
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1128
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1133
    .end local v13           #dx:F
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1134
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1136
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x258

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 1138
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_13

    .line 1141
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1145
    :cond_13
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3

    .line 1146
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 1147
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isTouched:Z

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 20
    .parameter "gl"

    .prologue
    .line 856
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_3

    .line 858
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    .line 862
    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_2

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadTexture()V

    .line 875
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    .line 877
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    :goto_1
    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 900
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 901
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 902
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 903
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 906
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_WIDTH"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 907
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_HEIGHT"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 908
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_WIDTH"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 909
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_HEIGHT"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 910
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uRefractiveIndex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 912
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 913
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 914
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 917
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 918
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 919
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 922
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 923
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 924
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "texture0"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 927
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 928
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 929
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "texture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 932
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "reflectionRatio"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 933
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "alphaRatio1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 934
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "alphaRatio2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 937
    const v1, 0x8893

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 938
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v2, v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 939
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 940
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 949
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 951
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 953
    :cond_1
    return-void

    .line 868
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->transferBitmapFunc1(Landroid/graphics/Bitmap;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->transferBitmapFunc2(Landroid/graphics/Bitmap;)V

    .line 870
    invoke-static {}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onInitInkTextures()V

    .line 871
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onInitInkSetting(II)V

    goto/16 :goto_0

    .line 884
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 886
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_4
    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 891
    invoke-static {}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onInitInkGPU()V

    .line 893
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->move()V

    goto/16 :goto_1

    .line 943
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    move/from16 v19, v0

    invoke-static/range {v1 .. v19}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFI)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1742
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1744
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1766
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    .line 1769
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1771
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1776
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1777
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1779
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1781
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 776
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    .line 782
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 784
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 788
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 789
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 810
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v3, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v2, v3, :cond_1

    .line 812
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 815
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 817
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 820
    const/4 v14, 0x0

    .line 821
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 822
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 824
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_3

    .line 827
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 828
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 840
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 845
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 846
    return-void

    .line 796
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 797
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 798
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 800
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 803
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 804
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 834
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 835
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 752
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 760
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createBuffers()V

    .line 763
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShaderProp()V

    .line 764
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeBuffers()V

    .line 767
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 768
    return-void

    .line 757
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    .line 1543
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1544
    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    .line 1538
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 1539
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1242
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1243
    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    .line 1632
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1633
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1634
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1635
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1637
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1248
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1249
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 1641
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1643
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1605
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1614
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1616
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1626
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1628
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1156
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1157
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1173
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1179
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1180
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1182
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1199
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1205
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1672
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1674
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 1675
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1676
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1687
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1688
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1690
    return-void

    .line 1681
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 1682
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1683
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    .line 1694
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    .line 1696
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1720
    :goto_0
    return-void

    .line 1701
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1702
    const/4 v0, 0x0

    .line 1704
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 1705
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    .line 1710
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 1711
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1712
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1718
    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    .line 1707
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 1714
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1715
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1649
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1651
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 1652
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1653
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1663
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1664
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1666
    return-void

    .line 1657
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 1658
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1659
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

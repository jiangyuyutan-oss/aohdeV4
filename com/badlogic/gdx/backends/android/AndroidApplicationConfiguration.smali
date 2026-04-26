.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.super Ljava/lang/Object;
.source "AndroidApplicationConfiguration.java"


# instance fields
.field public a:I

.field public b:I

.field public depth:I

.field public disableAudio:Z

.field public g:I

.field public getTouchEventsForLiveWallpaper:Z

.field public hideStatusBar:Z

.field public maxNetThreads:I

.field public maxSimultaneousSounds:I

.field public numSamples:I

.field public r:I

.field public resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public sensorDelay:I

.field public stencil:I

.field public touchSleepTime:I

.field public useAccelerometer:Z

.field public useCompass:Z

.field public useGL30:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public useGyroscope:Z

.field public useImmersiveMode:Z

.field public useRotationVectorSensor:Z

.field public useWakelock:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    .line 35
    const/16 v1, 0x10

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    .line 38
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    .line 41
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    .line 44
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    .line 52
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    .line 62
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    .line 67
    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    .line 71
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    .line 74
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    .line 78
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    .line 81
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    .line 85
    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    .line 88
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 91
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    .line 94
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    return-void
.end method

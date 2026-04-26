.class Lcom/jcraft/jorbis/PsyInfo;
.super Ljava/lang/Object;
.source "PsyInfo.java"


# instance fields
.field ath_att:F

.field athp:I

.field attack_coeff:F

.field decay_coeff:F

.field decayp:I

.field max_curve_dB:F

.field noiseatt_1000Hz:[F

.field noiseatt_125Hz:[F

.field noiseatt_2000Hz:[F

.field noiseatt_250Hz:[F

.field noiseatt_4000Hz:[F

.field noiseatt_500Hz:[F

.field noiseatt_8000Hz:[F

.field noisefit_subblock:I

.field noisefit_threshdB:F

.field noisefitp:I

.field noisemaskp:I

.field peakatt_1000Hz:[F

.field peakatt_125Hz:[F

.field peakatt_2000Hz:[F

.field peakatt_250Hz:[F

.field peakatt_4000Hz:[F

.field peakatt_500Hz:[F

.field peakatt_8000Hz:[F

.field peakattp:I

.field smoothp:I

.field toneatt_1000Hz:[F

.field toneatt_125Hz:[F

.field toneatt_2000Hz:[F

.field toneatt_250Hz:[F

.field toneatt_4000Hz:[F

.field toneatt_500Hz:[F

.field toneatt_8000Hz:[F

.field tonemaskp:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x5

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_125Hz:[F

    .line 42
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_250Hz:[F

    .line 43
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_500Hz:[F

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_1000Hz:[F

    .line 45
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_2000Hz:[F

    .line 46
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_4000Hz:[F

    .line 47
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_8000Hz:[F

    .line 50
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_125Hz:[F

    .line 51
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_250Hz:[F

    .line 52
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_500Hz:[F

    .line 53
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_1000Hz:[F

    .line 54
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_2000Hz:[F

    .line 55
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_4000Hz:[F

    .line 56
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_8000Hz:[F

    .line 59
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_125Hz:[F

    .line 60
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_250Hz:[F

    .line 61
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_500Hz:[F

    .line 62
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_1000Hz:[F

    .line 63
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_2000Hz:[F

    .line 64
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_4000Hz:[F

    .line 65
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_8000Hz:[F

    return-void
.end method


# virtual methods
.method free()V
    .registers 1

    .line 73
    return-void
.end method

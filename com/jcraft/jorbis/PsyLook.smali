.class Lcom/jcraft/jorbis/PsyLook;
.super Ljava/lang/Object;
.source "PsyLook.java"


# instance fields
.field ath:[F

.field n:I

.field noisecurves:[[[F

.field octave:[I

.field peakatt:[[F

.field tonecurves:[[[F

.field vi:Lcom/jcraft/jorbis/PsyInfo;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method init(Lcom/jcraft/jorbis/PsyInfo;II)V
    .registers 4
    .param p1, "vi"  # Lcom/jcraft/jorbis/PsyInfo;
    .param p2, "n"  # I
    .param p3, "rate"  # I

    .line 41
    return-void
.end method

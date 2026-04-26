.class Lcom/jcraft/jorbis/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field static final COS_LOOKUP:[F

.field static final COS_LOOKUP_SZ:I = 0x80

.field static final FROMdB2_LOOKUP:[F

.field static final FROMdB2_LOOKUP_SZ:I = 0x20

.field static final FROMdB2_MASK:I = 0x1f

.field static final FROMdB2_SHIFT:I = 0x3

.field static final FROMdB_LOOKUP:[F

.field static final FROMdB_LOOKUP_SZ:I = 0x23

.field static final FROMdB_SHIFT:I = 0x5

.field static final INVSQ2EXP_LOOKUP:[F

.field static final INVSQ2EXP_LOOKUP_MAX:I = 0x20

.field static final INVSQ2EXP_LOOKUP_MIN:I = -0x20

.field static final INVSQ_LOOKUP:[F

.field static final INVSQ_LOOKUP_SZ:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/16 v0, 0x81

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/jcraft/jorbis/Lookup;->COS_LOOKUP:[F

    .line 84
    const/16 v0, 0x21

    new-array v0, v0, [F

    fill-array-data v0, :array_134

    sput-object v0, Lcom/jcraft/jorbis/Lookup;->INVSQ_LOOKUP:[F

    .line 103
    const/16 v0, 0x41

    new-array v0, v0, [F

    fill-array-data v0, :array_17a

    sput-object v0, Lcom/jcraft/jorbis/Lookup;->INVSQ2EXP_LOOKUP:[F

    .line 127
    const/16 v0, 0x23

    new-array v0, v0, [F

    fill-array-data v0, :array_200

    sput-object v0, Lcom/jcraft/jorbis/Lookup;->FROMdB_LOOKUP:[F

    .line 136
    const/16 v0, 0x20

    new-array v0, v0, [F

    fill-array-data v0, :array_24a

    sput-object v0, Lcom/jcraft/jorbis/Lookup;->FROMdB2_LOOKUP:[F

    return-void

    :array_2e
    .array-data 4
        0x3f800000  # 1.0f
        0x3f7fec43
        0x3f7fb10f
        0x3f7f4e6d
        0x3f7ec46d
        0x3f7e1324
        0x3f7d3aac
        0x3f7c3b28
        0x3f7b14be
        0x3f79c79d
        0x3f7853f8
        0x3f76ba07
        0x3f74fa0b
        0x3f731447
        0x3f710908
        0x3f6ed89e
        0x3f6c835e
        0x3f6a09a7
        0x3f676bd8
        0x3f64aa59
        0x3f61c598
        0x3f5ebe05
        0x3f5b941a
        0x3f584853  # 0.8448536f
        0x3f54db31
        0x3f514d3d
        0x3f4d9f02
        0x3f49d112
        0x3f45e403
        0x3f41d870
        0x3f3daef9
        0x3f396842
        0x3f3504f3
        0x3f3085bb
        0x3f2beb4a
        0x3f273656
        0x3f226799
        0x3f1d7fd1
        0x3f187fc0
        0x3f13682a
        0x3f0e39da
        0x3f08f59b
        0x3f039c3d
        0x3efc5d27
        0x3ef15aea
        0x3ee63375
        0x3edae880
        0x3ecf7bca
        0x3ec3ef15
        0x3eb8442a
        0x3eac7cd4
        0x3ea09ae5
        0x3e94a031
        0x3e888e93
        0x3e78cfcc
        0x3e605c13
        0x3e47c5c2
        0x3e2f10a2
        0x3e164083
        0x3dfab273
        0x3dc8bd36
        0x3d96a905
        0x3d48fb30
        0x3cc90ab0
        0x0
        -0x4336f550
        -0x42b704d0
        -0x426956fb
        -0x423742ca
        -0x42054d8d
        -0x41e9bf7d
        -0x41d0ef5e
        -0x41b83a3e
        -0x419fa3ed
        -0x41873034
        -0x4177716d
        -0x416b5fcf
        -0x415f651b
        -0x4153832c
        -0x4147bbd6
        -0x413c10eb
        -0x41308436
        -0x41251780
        -0x4119cc8b
        -0x410ea516
        -0x4103a2d9
        -0x40fc63c3
        -0x40f70a65
        -0x40f1c626
        -0x40ec97d6
        -0x40e78040
        -0x40e2802f
        -0x40dd9867
        -0x40d8c9aa
        -0x40d414b6
        -0x40cf7a45
        -0x40cafb0d
        -0x40c697be
        -0x40c25107
        -0x40be2790
        -0x40ba1bfd
        -0x40b62eee
        -0x40b260fe
        -0x40aeb2c3
        -0x40ab24cf
        -0x40a7b7ad  # -0.8448536f
        -0x40a46be6
        -0x40a141fb
        -0x409e3a68
        -0x409b55a7
        -0x40989428
        -0x4095f659
        -0x40937ca2
        -0x40912762
        -0x408ef6f8
        -0x408cebb9
        -0x408b05f5
        -0x408945f9
        -0x4087ac08
        -0x40863863
        -0x4084eb42
        -0x4083c4d8
        -0x4082c554
        -0x4081ecdc
        -0x40813b93
        -0x4080b193
        -0x40804ef1
        -0x408013bd
        -0x40800000  # -1.0f
    .end array-data

    :array_134
    .array-data 4
        0x3fb504f3
        0x3fb2416a
        0x3faf9d53
        0x3fad166c
        0x3faaaaab
        0x3fa85835
        0x3fa61d5f
        0x3fa3f8a2
        0x3fa1e89b
        0x3f9fec04
        0x3f9e01b3
        0x3f9c2896
        0x3f9a5fb2
        0x3f98a61f
        0x3f96fb06
        0x3f955da2
        0x3f93cd3a
        0x3f924925
        0x3f90d0c3
        0x3f8f6381
        0x3f8e00d5
        0x3f8ca83f
        0x3f8b5948
        0x3f8a137d
        0x3f88d677
        0x3f87a1d2
        0x3f867532
        0x3f85503e
        0x3f8432a5
        0x3f831c1a
        0x3f820c52  # 1.016001f
        0x3f81030a
        0x3f800000  # 1.0f
    .end array-data

    :array_17a
    .array-data 4
        0x47800000  # 65536.0f
        0x473504f3
        0x47000000  # 32768.0f
        0x46b504f3
        0x46800000  # 16384.0f
        0x463504f3
        0x46000000  # 8192.0f
        0x45b504f3
        0x45800000  # 4096.0f
        0x453504f3
        0x45000000  # 2048.0f
        0x44b504f3
        0x44800000  # 1024.0f
        0x443504f3
        0x44000000  # 512.0f
        0x43b504f3
        0x43800000  # 256.0f
        0x433504f3
        0x43000000  # 128.0f
        0x42b504f3
        0x42800000  # 64.0f
        0x423504f3
        0x42000000  # 32.0f
        0x41b504f3
        0x41800000  # 16.0f
        0x413504f3
        0x41000000  # 8.0f
        0x40b504f3
        0x40800000  # 4.0f
        0x403504f3
        0x40000000  # 2.0f
        0x3fb504f3
        0x3f800000  # 1.0f
        0x3f3504f3
        0x3f000000  # 0.5f
        0x3eb504f3
        0x3e800000  # 0.25f
        0x3e3504f3
        0x3e000000  # 0.125f
        0x3db504f3
        0x3d800000  # 0.0625f
        0x3d3504f3
        0x3d000000  # 0.03125f
        0x3cb504f3
        0x3c800000  # 0.015625f
        0x3c3504f3
        0x3c000000  # 0.0078125f
        0x3bb504f3
        0x3b800000  # 0.00390625f
        0x3b3504f3
        0x3b000000  # 0.001953125f
        0x3ab504f3
        0x3a800000  # 9.765625E-4f
        0x3a3504f3
        0x3a000000
        0x39b504f3
        0x39800000
        0x393504f3
        0x39000000
        0x38b504f3
        0x38800000
        0x383504f3
        0x38000000
        0x37b504f3
        0x37800000
    .end array-data

    :array_200
    .array-data 4
        0x3f800000  # 1.0f
        0x3f21866c
        0x3ecbd4b4
        0x3e809bcc
        0x3e224b06
        0x3dcccccd  # 0.1f
        0x3d813856
        0x3d231090
        0x3ccdc614
        0x3c81d59f
        0x3c23d70a  # 0.01f
        0x3bcec08a
        0x3b8273a6
        0x3b249e76
        0x3acfbc31
        0x3a83126f  # 0.001f
        0x3a2566d5
        0x39d0b90a
        0x3983b1f8
        0x39263027
        0x38d1b717  # 1.0E-4f
        0x38845244
        0x3826fa6f
        0x37d2b65a
        0x3784f352
        0x3727c5ac  # 1.0E-5f
        0x36d3b6d3
        0x36859525
        0x362891e1
        0x35d4b884
        0x358637bd  # 1.0E-6f
        0x35295f0f
        0x34d5bb6f
        0x3486db1b
        0x342a2d36
    .end array-data

    :array_24a
    .array-data 4
        0x3f7e2a20
        0x3f7a8874
        0x3f76f410
        0x3f736cc5
        0x3f6ff262
        0x3f6c84b7  # 0.92390007f
        0x3f692397
        0x3f65ced3
        0x3f62863e
        0x3f5f49ac
        0x3f5c18f1
        0x3f58f3e1
        0x3f55da52
        0x3f52cc19
        0x3f4fc90e
        0x3f4cd107  # 0.8000645f
        0x3f49e3dc
        0x3f470165
        0x3f44297b
        0x3f415bf8
        0x3f3e98b5
        0x3f3bdf8e
        0x3f39305c
        0x3f368afc
        0x3f33ef4a
        0x3f315d21
        0x3f2ed461
        0x3f2c54e5
        0x3f29de8c
        0x3f277135
        0x3f250cbf
        0x3f22b109
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coslook(F)F
    .registers 8
    .param p0, "a"  # F

    .line 78
    float-to-double v0, p0

    const-wide v2, 0x40445f3071e2c65eL  # 40.74366592

    mul-double/2addr v0, v2

    .line 79
    .local v0, "d":D
    double-to-int v2, v0

    .line 80
    .local v2, "i":I
    sget-object v3, Lcom/jcraft/jorbis/Lookup;->COS_LOOKUP:[F

    aget v3, v3, v2

    int-to-double v4, v2

    sub-double v4, v0, v4

    double-to-float v4, v4

    sget-object v5, Lcom/jcraft/jorbis/Lookup;->COS_LOOKUP:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    sget-object v6, Lcom/jcraft/jorbis/Lookup;->COS_LOOKUP:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    return v3
.end method

.method static fromdBlook(F)F
    .registers 5
    .param p0, "a"  # F

    .line 147
    const/high16 v0, -0x3f000000  # -8.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 148
    .local v0, "i":I
    if-gez v0, :cond_9

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_1c

    :cond_9
    const/16 v1, 0x460

    if-lt v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_1c

    :cond_f
    sget-object v1, Lcom/jcraft/jorbis/Lookup;->FROMdB_LOOKUP:[F

    ushr-int/lit8 v2, v0, 0x5

    aget v1, v1, v2

    sget-object v2, Lcom/jcraft/jorbis/Lookup;->FROMdB2_LOOKUP:[F

    and-int/lit8 v3, v0, 0x1f

    aget v2, v2, v3

    mul-float/2addr v1, v2

    :goto_1c
    return v1
.end method

.method static invsq2explook(I)F
    .registers 3
    .param p0, "a"  # I

    .line 119
    sget-object v0, Lcom/jcraft/jorbis/Lookup;->INVSQ2EXP_LOOKUP:[F

    add-int/lit8 v1, p0, 0x20

    aget v0, v0, v1

    return v0
.end method

.method static invsqlook(F)F
    .registers 8
    .param p0, "a"  # F

    .line 96
    const/high16 v0, 0x42800000  # 64.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x42000000  # 32.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 97
    .local v0, "d":D
    double-to-int v2, v0

    .line 98
    .local v2, "i":I
    sget-object v3, Lcom/jcraft/jorbis/Lookup;->INVSQ_LOOKUP:[F

    aget v3, v3, v2

    int-to-double v4, v2

    sub-double v4, v0, v4

    double-to-float v4, v4

    sget-object v5, Lcom/jcraft/jorbis/Lookup;->INVSQ_LOOKUP:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    sget-object v6, Lcom/jcraft/jorbis/Lookup;->INVSQ_LOOKUP:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    return v3
.end method

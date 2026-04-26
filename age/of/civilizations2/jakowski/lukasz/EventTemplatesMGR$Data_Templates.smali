.class public Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;
.super Ljava/lang/Object;
.source "EventTemplatesMGR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Templates"
.end annotation


# instance fields
.field public BG_IMG:Ljava/lang/String;

.field public BUTTON_IMG:Ljava/lang/String;

.field public DEFAULT_IMG:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public btnColor:[I

.field public btnHeight:I

.field public btnPosX:I

.field public btnPosY:I

.field public btnWidth:I

.field public descColor:[I

.field public descPosX:I

.field public descPosY:I

.field public descWidth:I

.field public imgHeight:I

.field public imgPosX:I

.field public imgPosY:I

.field public imgWidth:I

.field public nextButtonBelow:Z

.field public titleColor:[I

.field public titleHeight:I

.field public titlePosX:I

.field public titlePosY:I

.field public titleWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->imgPosX:I

    .line 140
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->imgPosY:I

    .line 141
    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->imgWidth:I

    .line 142
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->imgHeight:I

    .line 144
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->titlePosX:I

    .line 145
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->titlePosY:I

    .line 146
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->titleWidth:I

    .line 147
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->titleHeight:I

    .line 150
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->descPosX:I

    .line 151
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->descPosY:I

    .line 152
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->descWidth:I

    .line 157
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->btnPosX:I

    .line 158
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->btnPosY:I

    .line 159
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->btnWidth:I

    .line 160
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->btnHeight:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplatesMGR$Data_Templates;->nextButtonBelow:Z

    return-void
.end method

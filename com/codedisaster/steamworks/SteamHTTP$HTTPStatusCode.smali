.class public final enum Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
.super Ljava/lang/Enum;
.source "SteamHTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamHTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Accepted:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum BadGateway:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum BadRequest:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Conflict:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Continue:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Created:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ExpectationFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Forbidden:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Found:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum GatewayTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Gone:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum HTTPVersionNotSupported:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum InternalServerError:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum LengthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MethodNotAllowed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MovedPermanently:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MultipleChoices:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NoContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NonAuthoritative:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotAcceptable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotFound:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotImplemented:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotModified:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PartialContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PaymentRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PreconditionFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ProxyAuthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestEntityTooLarge:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestURITooLong:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestedRangeNotSatisfiable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ResetContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum SeeOther:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ServiceUnavailable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum SwitchingProtocols:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum TemporaryRedirect:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum TooManyRequests:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unauthorized:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unknown4xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unknown5xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum UnsupportedMediaType:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum UseProxy:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field private static final values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 48

    .line 19
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 21
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-string v3, "Continue"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Continue:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 22
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x2

    const/16 v2, 0x65

    const-string v3, "SwitchingProtocols"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SwitchingProtocols:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 24
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x3

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->OK:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 25
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x4

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Created:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 26
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x5

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Accepted:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 27
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x6

    const/16 v2, 0xcb

    const-string v3, "NonAuthoritative"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NonAuthoritative:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 28
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/4 v1, 0x7

    const/16 v2, 0xcc

    const-string v3, "NoContent"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NoContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 29
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x8

    const/16 v2, 0xcd

    const-string v3, "ResetContent"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ResetContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 30
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x9

    const/16 v2, 0xce

    const-string v3, "PartialContent"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PartialContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 32
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xa

    const/16 v2, 0x12c

    const-string v3, "MultipleChoices"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MultipleChoices:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 33
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xb

    const/16 v2, 0x12d

    const-string v3, "MovedPermanently"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MovedPermanently:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 34
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xc

    const/16 v2, 0x12e

    const-string v3, "Found"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Found:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 35
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xd

    const/16 v2, 0x12f

    const-string v3, "SeeOther"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SeeOther:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 36
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xe

    const/16 v2, 0x130

    const-string v3, "NotModified"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotModified:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 37
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0xf

    const/16 v2, 0x131

    const-string v3, "UseProxy"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UseProxy:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 38
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x10

    const/16 v2, 0x133

    const-string v3, "TemporaryRedirect"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TemporaryRedirect:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 40
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x11

    const/16 v2, 0x190

    const-string v3, "BadRequest"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadRequest:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 41
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x12

    const/16 v2, 0x191

    const-string v3, "Unauthorized"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unauthorized:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 42
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x13

    const/16 v2, 0x192

    const-string v3, "PaymentRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PaymentRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 43
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x14

    const/16 v2, 0x193

    const-string v3, "Forbidden"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Forbidden:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 44
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x15

    const/16 v2, 0x194

    const-string v3, "NotFound"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotFound:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 45
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x16

    const/16 v2, 0x195

    const-string v3, "MethodNotAllowed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MethodNotAllowed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 46
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x17

    const/16 v2, 0x196

    const-string v3, "NotAcceptable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotAcceptable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 47
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x18

    const/16 v2, 0x197

    const-string v3, "ProxyAuthRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ProxyAuthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 48
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x19

    const/16 v2, 0x198

    const-string v3, "RequestTimeout"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 49
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1a

    const/16 v2, 0x199

    const-string v3, "Conflict"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Conflict:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 50
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1b

    const/16 v2, 0x19a

    const-string v3, "Gone"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Gone:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 51
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1c

    const/16 v2, 0x19b

    const-string v3, "LengthRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->LengthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 52
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1d

    const/16 v2, 0x19c

    const-string v3, "PreconditionFailed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PreconditionFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 53
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1e

    const/16 v2, 0x19d

    const-string v3, "RequestEntityTooLarge"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestEntityTooLarge:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 54
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x1f

    const/16 v2, 0x19e

    const-string v3, "RequestURITooLong"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestURITooLong:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 55
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x20

    const/16 v2, 0x19f

    const-string v3, "UnsupportedMediaType"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UnsupportedMediaType:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 56
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x21

    const/16 v2, 0x1a0

    const-string v3, "RequestedRangeNotSatisfiable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestedRangeNotSatisfiable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 57
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x22

    const/16 v2, 0x1a1

    const-string v3, "ExpectationFailed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ExpectationFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 58
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x23

    const/16 v2, 0x1a2

    const-string v3, "Unknown4xx"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown4xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 59
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x24

    const/16 v2, 0x1ad

    const-string v3, "TooManyRequests"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TooManyRequests:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 61
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x25

    const/16 v2, 0x1f4

    const-string v3, "InternalServerError"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->InternalServerError:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 62
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x26

    const/16 v2, 0x1f5

    const-string v3, "NotImplemented"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotImplemented:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 63
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x27

    const/16 v2, 0x1f6

    const-string v3, "BadGateway"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadGateway:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 64
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x28

    const/16 v2, 0x1f7

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ServiceUnavailable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 65
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x29

    const/16 v2, 0x1f8

    const-string v3, "GatewayTimeout"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->GatewayTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 66
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x2a

    const/16 v2, 0x1f9

    const-string v3, "HTTPVersionNotSupported"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->HTTPVersionNotSupported:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 67
    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    const/16 v1, 0x2b

    const/16 v2, 0x257

    const-string v3, "Unknown5xx"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown5xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 18
    sget-object v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Continue:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SwitchingProtocols:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v7, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->OK:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v8, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Created:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v9, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Accepted:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v10, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NonAuthoritative:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v11, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NoContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v12, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ResetContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v13, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PartialContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v14, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MultipleChoices:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v15, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MovedPermanently:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v16, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Found:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v17, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SeeOther:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v18, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotModified:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v19, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UseProxy:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v20, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TemporaryRedirect:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v21, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadRequest:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v22, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unauthorized:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v23, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PaymentRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v24, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Forbidden:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v25, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotFound:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v26, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MethodNotAllowed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v27, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotAcceptable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v28, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ProxyAuthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v29, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v30, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Conflict:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v31, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Gone:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v32, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->LengthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v33, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PreconditionFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v34, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestEntityTooLarge:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v35, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestURITooLong:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v36, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UnsupportedMediaType:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v37, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestedRangeNotSatisfiable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v38, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ExpectationFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v39, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown4xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v40, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TooManyRequests:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v41, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->InternalServerError:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v42, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotImplemented:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v43, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadGateway:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v44, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ServiceUnavailable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v45, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->GatewayTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v46, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->HTTPVersionNotSupported:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    sget-object v47, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown5xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    filled-new-array/range {v4 .. v47}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    .line 70
    invoke-static {}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->code:I

    .line 74
    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .registers 6
    .param p0, "statusCode"  # I

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "from":I
    sget-object v1, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 89
    .local v1, "to":I
    :goto_6
    if-gt v0, v1, :cond_1f

    .line 90
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 91
    .local v2, "idx":I
    sget-object v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    aget-object v3, v3, v2

    .line 92
    .local v3, "value":Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    iget v4, v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->code:I

    if-ge p0, v4, :cond_17

    .line 93
    add-int/lit8 v1, v2, -0x1

    goto :goto_1d

    .line 94
    :cond_17
    iget v4, v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->code:I

    if-le p0, v4, :cond_1e

    .line 95
    add-int/lit8 v0, v2, 0x1

    .line 99
    .end local v2  # "idx":I
    .end local v3  # "value":Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    :goto_1d
    goto :goto_6

    .line 97
    .restart local v2  # "idx":I
    .restart local v3  # "value":Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    :cond_1e
    return-object v3

    .line 101
    .end local v2  # "idx":I
    .end local v3  # "value":Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    :cond_1f
    sget-object v2, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .registers 1

    .line 18
    sget-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object v0
.end method

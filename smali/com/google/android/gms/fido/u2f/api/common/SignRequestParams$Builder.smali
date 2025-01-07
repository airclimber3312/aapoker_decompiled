.class public final Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzgtd:Ljava/lang/Integer;

.field private zzhfe:Ljava/lang/Double;

.field private zzhgm:Landroid/net/Uri;

.field private zzhgo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/u2f/api/common/RegisteredKey;",
            ">;"
        }
    .end annotation
.end field

.field private zzhgp:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

.field private zzhgq:Ljava/lang/String;

.field private zzhgw:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;
    .locals 9

    new-instance v8, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzgtd:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhfe:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgm:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgw:[B

    iget-object v5, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgo:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgp:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

    iget-object v7, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgq:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;-><init>(Ljava/lang/Integer;Ljava/lang/Double;Landroid/net/Uri;[BLjava/util/List;Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;Ljava/lang/String;)V

    return-object v8
.end method

.method public final setAppId(Landroid/net/Uri;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgm:Landroid/net/Uri;

    return-object p0
.end method

.method public final setChannelIdValue(Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgp:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

    return-object p0
.end method

.method public final setDefaultSignChallenge([B)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgw:[B

    return-object p0
.end method

.method public final setDisplayHint(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgq:Ljava/lang/String;

    return-object p0
.end method

.method public final setRegisteredKeys(Ljava/util/List;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/u2f/api/common/RegisteredKey;",
            ">;)",
            "Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhgo:Ljava/util/List;

    return-object p0
.end method

.method public final setRequestId(Ljava/lang/Integer;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzgtd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzhfe:Ljava/lang/Double;

    return-object p0
.end method

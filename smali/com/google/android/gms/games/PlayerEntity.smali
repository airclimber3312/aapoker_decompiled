.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/PlayerEntity$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private zzemi:Ljava/lang/String;

.field private final zzesj:Ljava/lang/String;

.field private zzfld:Ljava/lang/String;

.field private final zzhra:Landroid/net/Uri;

.field private final zzhrb:Landroid/net/Uri;

.field private final zzhrl:Ljava/lang/String;

.field private final zzhrm:Ljava/lang/String;

.field private final zzhtf:J

.field private final zzhtg:I

.field private final zzhth:J

.field private final zzhti:Lcom/google/android/gms/games/internal/player/zzb;

.field private final zzhtj:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzhtk:Z

.field private final zzhtl:Z

.field private final zzhtm:Ljava/lang/String;

.field private final zzhtn:Landroid/net/Uri;

.field private final zzhto:Ljava/lang/String;

.field private final zzhtp:Landroid/net/Uri;

.field private final zzhtq:Ljava/lang/String;

.field private final zzhtr:I

.field private final zzhts:J

.field private final zzhtt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity$zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerEntity$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Player;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzfld:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzemi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhra:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrl:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrb:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrm:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtf:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasx()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtg:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhth:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzesj:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasy()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtk:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasz()Lcom/google/android/gms/games/internal/player/zza;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/games/internal/player/zzb;

    invoke-direct {v2, p2}, Lcom/google/android/gms/games/internal/player/zzb;-><init>(Lcom/google/android/gms/games/internal/player/zza;)V

    move-object p2, v2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhti:Lcom/google/android/gms/games/internal/player/zzb;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtj:Lcom/google/android/gms/games/PlayerLevelInfo;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasw()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtl:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasv()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtm:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtn:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhto:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtp:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtq:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzata()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtr:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzatb()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhts:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->isMuted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtt:Z

    iget-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzfld:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzv(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzemi:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzv(Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->checkState(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/zzb;Lcom/google/android/gms/games/PlayerLevelInfo;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;IJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzfld:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzemi:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhra:Landroid/net/Uri;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhrl:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhrb:Landroid/net/Uri;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhrm:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtf:J

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtg:I

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhth:J

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzesj:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtk:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhti:Lcom/google/android/gms/games/internal/player/zzb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtj:Lcom/google/android/gms/games/PlayerLevelInfo;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtl:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtm:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtn:Landroid/net/Uri;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhto:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtp:Landroid/net/Uri;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtq:Ljava/lang/String;

    move/from16 v1, p23

    iput v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtr:I

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhts:J

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/google/android/gms/games/PlayerEntity;->zzhtt:Z

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/Player;)I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasv()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzata()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzatb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->isMuted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xe

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/games/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasw()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzasv()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzata()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzata()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzatb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzatb()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->isMuted()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->isMuted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method static synthetic zzast()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->zzamq()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "PlayerId"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "HasDebugAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "HiResImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RetrievedTimestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "LevelInfo"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "GamerTag"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzasv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "BannerImageLandscapeUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "BannerImageLandscapeUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "BannerImagePortraitUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "BannerImagePortraitUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzata()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GamerFriendStatus"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzatb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GamerFriendUpdateTimestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->isMuted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "IsMuted"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zze(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzhx(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzgq(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final freeze()Lcom/google/android/gms/games/Player;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImageLandscapeUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtn:Landroid/net/Uri;

    return-object v0
.end method

.method public final getBannerImageLandscapeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhto:Ljava/lang/String;

    return-object v0
.end method

.method public final getBannerImagePortraitUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtp:Landroid/net/Uri;

    return-object v0
.end method

.method public final getBannerImagePortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtq:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzemi:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzemi:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzh;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrb:Landroid/net/Uri;

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrm:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhra:Landroid/net/Uri;

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPlayedWithTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhth:J

    return-wide v0
.end method

.method public final getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtj:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzfld:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetrievedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtf:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzesj:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzesj:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzh;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtt:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getRetrievedTimestamp()J

    move-result-wide v4

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLastPlayedWithTimestamp()J

    move-result-wide v4

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhti:Lcom/google/android/gms/games/internal/player/zzb;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtk:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtl:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtm:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x1a

    iget v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtr:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/16 p2, 0x1b

    iget-wide v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhts:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x1c

    iget-boolean v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtt:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzasv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzasw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtl:Z

    return v0
.end method

.method public final zzasx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtg:I

    return v0
.end method

.method public final zzasy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtk:Z

    return v0
.end method

.method public final zzasz()Lcom/google/android/gms/games/internal/player/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhti:Lcom/google/android/gms/games/internal/player/zzb;

    return-object v0
.end method

.method public final zzata()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhtr:I

    return v0
.end method

.method public final zzatb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzhts:J

    return-wide v0
.end method

.class public final Lcom/google/android/gms/internal/zzcwn$zzb$zza;
.super Lcom/google/android/gms/internal/zzbhs;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcwn$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcwn$zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzejp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzehz:I

.field private zzejq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzkjj:I

.field private zzkjk:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzcwr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejp:Ljava/util/HashMap;

    const/4 v1, 0x2

    const-string v2, "leftImageOffset"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbhq;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v2, "topImageOffset"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbhq;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhs;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzehz:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzehz:I

    iput p3, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjj:I

    iput p4, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjk:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/zzcwn$zzb$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcwn$zzb$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbhq;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbhp;->zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbhp;->zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final getLeftImageOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjj:I

    return v0
.end method

.method public final getTopImageOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjk:I

    return v0
.end method

.method public final hasLeftImageOffset()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasTopImageOffset()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbhq;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbhq;->zzane()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbhp;->zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzehz:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjj:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjk:I

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbhq;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejq:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbhq;->zzane()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic zzabz()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzejp:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbhq;->zzane()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjk:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbhq;->zzane()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzcwn$zzb$zza;->zzkjj:I

    goto :goto_0
.end method

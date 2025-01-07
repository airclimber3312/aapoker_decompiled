.class public final Lcom/google/android/gms/internal/zzbsf;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbsf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgjw:I

.field private zzgxi:Lcom/google/android/gms/drive/events/ChangeEvent;

.field private zzgxj:Lcom/google/android/gms/drive/events/CompletionEvent;

.field private zzgxk:Lcom/google/android/gms/drive/events/zzo;

.field private zzgxl:Lcom/google/android/gms/drive/events/zzb;

.field private zzgxm:Lcom/google/android/gms/drive/events/zzv;

.field private zzgxn:Lcom/google/android/gms/drive/events/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzo;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzv;Lcom/google/android/gms/drive/events/zzr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbsf;->zzgjw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxi:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxj:Lcom/google/android/gms/drive/events/CompletionEvent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxk:Lcom/google/android/gms/drive/events/zzo;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxl:Lcom/google/android/gms/drive/events/zzb;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxm:Lcom/google/android/gms/drive/events/zzv;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxn:Lcom/google/android/gms/drive/events/zzr;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgjw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxi:Lcom/google/android/gms/drive/events/ChangeEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxj:Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxk:Lcom/google/android/gms/drive/events/zzo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxl:Lcom/google/android/gms/drive/events/zzb;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxm:Lcom/google/android/gms/drive/events/zzv;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxn:Lcom/google/android/gms/drive/events/zzr;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaqq()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgjw:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxn:Lcom/google/android/gms/drive/events/zzr;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbsf;->zzgjw:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxm:Lcom/google/android/gms/drive/events/zzv;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxl:Lcom/google/android/gms/drive/events/zzb;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxk:Lcom/google/android/gms/drive/events/zzo;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxj:Lcom/google/android/gms/drive/events/CompletionEvent;

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsf;->zzgxi:Lcom/google/android/gms/drive/events/ChangeEvent;

    return-object v0
.end method

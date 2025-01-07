.class public final Lcom/google/android/gms/internal/zzbra;
.super Lcom/google/android/gms/internal/zzbrp;


# static fields
.field private static final zzgpv:Lcom/google/android/gms/common/internal/zzal;


# instance fields
.field private final zzgjw:I

.field private final zzgwp:Lcom/google/android/gms/drive/events/zzi;

.field private final zzgwq:Lcom/google/android/gms/internal/zzbrc;

.field private final zzgwr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzal;

    const-string v1, "EventCallback"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbra;->zzgpv:Lcom/google/android/gms/common/internal/zzal;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrp;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbra;->zzgwr:Ljava/util/List;

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/gms/internal/zzbra;->zzgjw:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbra;->zzgwp:Lcom/google/android/gms/drive/events/zzi;

    new-instance p3, Lcom/google/android/gms/internal/zzbrc;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/zzbrc;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzbrb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbra;->zzgwq:Lcom/google/android/gms/internal/zzbrc;

    return-void
.end method

.method static synthetic zzaqc()Lcom/google/android/gms/common/internal/zzal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbra;->zzgpv:Lcom/google/android/gms/common/internal/zzal;

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/zzbsf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbsf;->zzaqq()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/zzbra;->zzgjw:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzgwr:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzgwq:Lcom/google/android/gms/internal/zzbrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbra;->zzgwp:Lcom/google/android/gms/drive/events/zzi;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrc;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrc;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zzcv(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbra;->zzgwr:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzcw(I)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbra;->zzgwr:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

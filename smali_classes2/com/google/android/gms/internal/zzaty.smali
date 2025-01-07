.class public final Lcom/google/android/gms/internal/zzaty;
.super Ljava/lang/Object;


# instance fields
.field private account:Landroid/accounts/Account;

.field private zzefg:Ljava/lang/String;

.field private zzefh:Z

.field private zzefi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzauc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzauc;)Lcom/google/android/gms/internal/zzaty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzefi:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzefi:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaty;->zzefi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final zzabp()Lcom/google/android/gms/internal/zzatx;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzatx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaty;->zzefg:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaty;->zzefh:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaty;->account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaty;->zzefi:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzauc;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzauc;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx;-><init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/zzauc;)V

    return-object v0
.end method

.method public final zzap(Z)Lcom/google/android/gms/internal/zzaty;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaty;->zzefh:Z

    return-object p0
.end method

.method public final zzb(Landroid/accounts/Account;)Lcom/google/android/gms/internal/zzaty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaty;->account:Landroid/accounts/Account;

    return-object p0
.end method

.method public final zzes(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaty;->zzefg:Ljava/lang/String;

    return-object p0
.end method

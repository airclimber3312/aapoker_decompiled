.class public final Lcom/google/android/gms/internal/zzdba;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzknc:Ljava/lang/String;

.field private final zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzkwc:Lcom/google/android/gms/tagmanager/zzce;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdba;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdba;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdba;->zzkwc:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdba;->zzknc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdjc;Lcom/google/android/gms/internal/zzdjk;)Lcom/google/android/gms/internal/zzdav;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzdav;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdba;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdba;->zzknc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdba;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdba;->zzkwc:Lcom/google/android/gms/tagmanager/zzce;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzdav;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzdjc;Lcom/google/android/gms/internal/zzdjk;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V

    return-object v7
.end method

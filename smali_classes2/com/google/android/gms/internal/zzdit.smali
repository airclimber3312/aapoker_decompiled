.class final Lcom/google/android/gms/internal/zzdit;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzlbr:Ljava/lang/String;

.field private synthetic zzlbt:Lcom/google/android/gms/internal/zzdip;

.field private synthetic zzlbv:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdip;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdit;->zzlbt:Lcom/google/android/gms/internal/zzdip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdit;->zzlbr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdit;->zzlbv:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdit;->zzlbt:Lcom/google/android/gms/internal/zzdip;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdit;->zzlbr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdit;->zzlbv:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdip;->zze(Ljava/lang/String;[B)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzdnv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzlxz:Lcom/google/android/gms/internal/zzdnt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdnt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdnv;->zzlxz:Lcom/google/android/gms/internal/zzdnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnv;->zzlxz:Lcom/google/android/gms/internal/zzdnt;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdnt;->doFrame(J)V

    return-void
.end method

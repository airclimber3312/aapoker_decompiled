.class public abstract Lcom/google/android/gms/internal/zzdzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions;
.implements Ljava/lang/Cloneable;


# instance fields
.field zzmqj:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdzc;->zzbts()Lcom/google/android/gms/internal/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzbts()Lcom/google/android/gms/internal/zzdzc;
.end method

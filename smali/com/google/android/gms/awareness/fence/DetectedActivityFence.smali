.class public final Lcom/google/android/gms/awareness/fence/DetectedActivityFence;
.super Ljava/lang/Object;


# static fields
.field public static final IN_VEHICLE:I = 0x0

.field public static final ON_BICYCLE:I = 0x1

.field public static final ON_FOOT:I = 0x2

.field public static final RUNNING:I = 0x8

.field public static final STILL:I = 0x3

.field public static final UNKNOWN:I = 0x4

.field public static final WALKING:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs during([I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbjt;->zza(I[I)Lcom/google/android/gms/internal/zzbjt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static varargs starting([I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbjt;->zza(I[I)Lcom/google/android/gms/internal/zzbjt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static varargs stopping([I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbjt;->zza(I[I)Lcom/google/android/gms/internal/zzbjt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbjt;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

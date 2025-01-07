.class public final Lcom/google/android/gms/internal/zzbwp;
.super Ljava/lang/Object;


# instance fields
.field private final zzhmd:D

.field private final zzhme:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbwp;->zzhmd:D

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbwp;->zzhme:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/android/gms/internal/zzbwo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbwp;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public final zzf(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwp;->zzhmd:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwp;->zzhme:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/google/android/gms/vision/Detector$Detections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzlfv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzlfw:Lcom/google/android/gms/vision/Frame$Metadata;

.field private final zzlfx:Z


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lcom/google/android/gms/vision/Frame$Metadata;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Lcom/google/android/gms/vision/Frame$Metadata;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfv:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfw:Lcom/google/android/gms/vision/Frame$Metadata;

    iput-boolean p3, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfx:Z

    return-void
.end method


# virtual methods
.method public detectorIsOperational()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfx:Z

    return v0
.end method

.method public getDetectedItems()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfv:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getFrameMetadata()Lcom/google/android/gms/vision/Frame$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzlfw:Lcom/google/android/gms/vision/Frame$Metadata;

    return-object v0
.end method

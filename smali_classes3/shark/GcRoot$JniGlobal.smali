.class public final Lshark/GcRoot$JniGlobal;
.super Lshark/GcRoot;
.source "GcRoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/GcRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JniGlobal"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/GcRoot$JniGlobal;",
        "Lshark/GcRoot;",
        "id",
        "",
        "jniGlobalRefId",
        "(JJ)V",
        "getId",
        "()J",
        "getJniGlobalRefId",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final id:J

.field private final jniGlobalRefId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lshark/GcRoot;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/GcRoot$JniGlobal;->id:J

    iput-wide p3, p0, Lshark/GcRoot$JniGlobal;->jniGlobalRefId:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lshark/GcRoot$JniGlobal;->id:J

    return-wide v0
.end method

.method public final getJniGlobalRefId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lshark/GcRoot$JniGlobal;->jniGlobalRefId:J

    return-wide v0
.end method

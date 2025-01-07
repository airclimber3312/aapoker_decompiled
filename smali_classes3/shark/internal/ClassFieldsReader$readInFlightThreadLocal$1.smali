.class public final Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;
.super Ljava/lang/ThreadLocal;
.source "ClassFieldsReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/ClassFieldsReader;-><init>(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001J\u000c\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "shark/internal/ClassFieldsReader$readInFlightThreadLocal$1",
        "Ljava/lang/ThreadLocal;",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Lshark/internal/ClassFieldsReader;",
        "initialValue",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lshark/internal/ClassFieldsReader;


# direct methods
.method constructor <init>(Lshark/internal/ClassFieldsReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;->initialValue()Lshark/internal/ClassFieldsReader$ReadInFlight;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lshark/internal/ClassFieldsReader$ReadInFlight;
    .locals 2

    .line 80
    new-instance v0, Lshark/internal/ClassFieldsReader$ReadInFlight;

    iget-object v1, p0, Lshark/internal/ClassFieldsReader$readInFlightThreadLocal$1;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-direct {v0, v1}, Lshark/internal/ClassFieldsReader$ReadInFlight;-><init>(Lshark/internal/ClassFieldsReader;)V

    return-object v0
.end method

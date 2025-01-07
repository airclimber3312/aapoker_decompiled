.class final Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClassFieldsReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/ClassFieldsReader;->classDumpHasReferenceFields(Lshark/internal/IndexedObject$IndexedClass;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00060\u0002R\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lshark/internal/ClassFieldsReader$ReadInFlight;",
        "Lshark/internal/ClassFieldsReader;",
        "invoke"
    }
    k = 0x3
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

    iput-object p1, p0, Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;->this$0:Lshark/internal/ClassFieldsReader;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lshark/internal/ClassFieldsReader$ReadInFlight;

    invoke-virtual {p0, p1}, Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;->invoke(Lshark/internal/ClassFieldsReader$ReadInFlight;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/internal/ClassFieldsReader$ReadInFlight;)Z
    .locals 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->skipStaticFields()V

    .line 67
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->getPosition()I

    move-result v3

    iget-object v4, p0, Lshark/internal/ClassFieldsReader$classDumpHasReferenceFields$1;->this$0:Lshark/internal/ClassFieldsReader;

    invoke-static {v4}, Lshark/internal/ClassFieldsReader;->access$getIdentifierByteSize$p(Lshark/internal/ClassFieldsReader;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lshark/internal/ClassFieldsReader$ReadInFlight;->setPosition(I)V

    .line 70
    invoke-virtual {p1}, Lshark/internal/ClassFieldsReader$ReadInFlight;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

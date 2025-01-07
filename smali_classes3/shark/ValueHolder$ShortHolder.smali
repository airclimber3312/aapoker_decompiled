.class public final Lshark/ValueHolder$ShortHolder;
.super Lshark/ValueHolder;
.source "ValueHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/ValueHolder$ShortHolder;",
        "Lshark/ValueHolder;",
        "value",
        "",
        "(S)V",
        "getValue",
        "()S",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final value:S


# direct methods
.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lshark/ValueHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-short p1, p0, Lshark/ValueHolder$ShortHolder;->value:S

    return-void
.end method

.method public static synthetic copy$default(Lshark/ValueHolder$ShortHolder;SILjava/lang/Object;)Lshark/ValueHolder$ShortHolder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-short p1, p0, Lshark/ValueHolder$ShortHolder;->value:S

    :cond_0
    invoke-virtual {p0, p1}, Lshark/ValueHolder$ShortHolder;->copy(S)Lshark/ValueHolder$ShortHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()S
    .locals 1

    iget-short v0, p0, Lshark/ValueHolder$ShortHolder;->value:S

    return v0
.end method

.method public final copy(S)Lshark/ValueHolder$ShortHolder;
    .locals 1

    new-instance v0, Lshark/ValueHolder$ShortHolder;

    invoke-direct {v0, p1}, Lshark/ValueHolder$ShortHolder;-><init>(S)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/ValueHolder$ShortHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/ValueHolder$ShortHolder;

    iget-short v0, p0, Lshark/ValueHolder$ShortHolder;->value:S

    iget-short p1, p1, Lshark/ValueHolder$ShortHolder;->value:S

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getValue()S
    .locals 1

    .line 20
    iget-short v0, p0, Lshark/ValueHolder$ShortHolder;->value:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lshark/ValueHolder$ShortHolder;->value:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortHolder(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lshark/ValueHolder$ShortHolder;->value:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

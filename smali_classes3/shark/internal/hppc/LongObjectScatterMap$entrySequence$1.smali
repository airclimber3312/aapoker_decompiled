.class final Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LongObjectScatterMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/hppc/LongObjectScatterMap;->entrySequence()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lshark/internal/hppc/LongObjectPair<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lshark/internal/hppc/LongObjectPair;",
        "T",
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
.field final synthetic $max:I

.field final synthetic $slot:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lshark/internal/hppc/LongObjectScatterMap;


# direct methods
.method constructor <init>(Lshark/internal/hppc/LongObjectScatterMap;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .locals 0

    iput-object p1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->this$0:Lshark/internal/hppc/LongObjectScatterMap;

    iput-object p2, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iput p3, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$max:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->invoke()Lshark/internal/hppc/LongObjectPair;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lshark/internal/hppc/LongObjectPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lshark/internal/hppc/LongObjectPair<",
            "TT;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$max:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 164
    :goto_0
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$max:I

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->this$0:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-static {v0}, Lshark/internal/hppc/LongObjectScatterMap;->access$getKeys$p(Lshark/internal/hppc/LongObjectScatterMap;)[J

    move-result-object v0

    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget-wide v4, v0, v1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->this$0:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-static {v0}, Lshark/internal/hppc/LongObjectScatterMap;->access$getValues$p(Lshark/internal/hppc/LongObjectScatterMap;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v4, v5, v0}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object v0

    return-object v0

    .line 169
    :cond_1
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$max:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->this$0:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-static {v0}, Lshark/internal/hppc/LongObjectScatterMap;->access$getHasEmptyKey$p(Lshark/internal/hppc/LongObjectScatterMap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$slot:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 174
    iget-object v0, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->this$0:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-static {v0}, Lshark/internal/hppc/LongObjectScatterMap;->access$getValues$p(Lshark/internal/hppc/LongObjectScatterMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lshark/internal/hppc/LongObjectScatterMap$entrySequence$1;->$max:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-static {v2, v3, v0}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

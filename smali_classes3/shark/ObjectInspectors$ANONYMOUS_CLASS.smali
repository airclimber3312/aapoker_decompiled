.class final Lshark/ObjectInspectors$ANONYMOUS_CLASS;
.super Lshark/ObjectInspectors;
.source "ObjectInspectors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ObjectInspectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ANONYMOUS_CLASS"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lshark/ObjectInspectors$ANONYMOUS_CLASS;",
        "Lshark/ObjectInspectors;",
        "inspect",
        "",
        "reporter",
        "Lshark/ObjectReporter;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lshark/ObjectInspectors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public inspect(Lshark/ObjectReporter;)V
    .locals 5

    const-string v0, "Anonymous class implementing "

    const-string v1, "reporter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v1

    .line 89
    instance-of v2, v1, Lshark/HeapObject$HeapInstance;

    if-eqz v2, :cond_4

    .line 90
    check-cast v1, Lshark/HeapObject$HeapInstance;

    invoke-virtual {v1}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {}, Lshark/ObjectInspectors;->access$getANONYMOUS_CLASS_NAME_PATTERN_REGEX$cp()Lkotlin/text/Regex;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getSuperclass()Lshark/HeapObject$HeapClass;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 93
    :cond_0
    invoke-virtual {v2}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.Object"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    :try_start_0
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "actualClass"

    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const-string v2, "interfaces"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 101
    aget-object v1, v1, v4

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "implementedInterface"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Anonymous subclass of java.lang.Object"

    .line 100
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Anonymous subclass of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method

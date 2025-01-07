.class public abstract Lshark/ReferencePattern;
.super Ljava/lang/Object;
.source "ReferencePattern.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/ReferencePattern$JavaLocalPattern;,
        Lshark/ReferencePattern$StaticFieldPattern;,
        Lshark/ReferencePattern$InstanceFieldPattern;,
        Lshark/ReferencePattern$NativeGlobalVariablePattern;,
        Lshark/ReferencePattern$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00032\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/ReferencePattern;",
        "Ljava/io/Serializable;",
        "()V",
        "Companion",
        "InstanceFieldPattern",
        "JavaLocalPattern",
        "NativeGlobalVariablePattern",
        "StaticFieldPattern",
        "Lshark/ReferencePattern$JavaLocalPattern;",
        "Lshark/ReferencePattern$StaticFieldPattern;",
        "Lshark/ReferencePattern$InstanceFieldPattern;",
        "Lshark/ReferencePattern$NativeGlobalVariablePattern;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/ReferencePattern$Companion;

.field private static final serialVersionUID:J = -0x46f7486a65c4675dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/ReferencePattern$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/ReferencePattern$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/ReferencePattern;->Companion:Lshark/ReferencePattern$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lshark/ReferencePattern;-><init>()V

    return-void
.end method

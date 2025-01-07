.class Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
.super Ljava/lang/Object;
.source "FastJsonHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spring4TypeResolvableHelper"
.end annotation


# static fields
.field private static hasClazzResolvableType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "org.springframework.core.ResolvableType"

    .line 300
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 301
    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 303
    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 295
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->isSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 0

    .line 295
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 314
    invoke-static {p0}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 315
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 316
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object p1

    .line 317
    sget-object v0, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq p1, v0, :cond_4

    .line 318
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 320
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->hasUnresolvableGenerics()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 322
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 323
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v2, 0x0

    .line 325
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 326
    aget-object v3, p0, v2

    .line 327
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_2

    .line 328
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v4

    .line 329
    sget-object v5, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v4, v5, :cond_1

    .line 330
    invoke-virtual {v4}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 332
    :cond_1
    invoke-static {v3}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 335
    :cond_2
    invoke-static {v3}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/springframework/core/ResolvableType;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static isSupport()Z
    .locals 1

    .line 308
    sget-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    return v0
.end method

.method private static resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lorg/springframework/core/ResolvableType;",
            ")",
            "Lorg/springframework/core/ResolvableType;"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p0, p1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    .line 355
    :cond_0
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getSuperType()Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 356
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v0, v1, :cond_1

    .line 357
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getInterfaces()[Lorg/springframework/core/ResolvableType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 363
    invoke-static {p0, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_3
    sget-object p0, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    return-object p0
.end method

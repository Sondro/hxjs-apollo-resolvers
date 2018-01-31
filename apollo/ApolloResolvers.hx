package apollo;

private typedef ResolveFunction = Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void;
private typedef ErrorFunction = Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void;

interface Resolver {
    function createResolver( ?res: ResolveFunction, ?err: ErrorFunction ) : Resolver;
}

@:jsRequire('apollo-resolvers')
extern class ApolloResolvers {
    public static function createResolver( ?res: ResolveFunction, ?err: ErrorFunction ) : Resolver;
}

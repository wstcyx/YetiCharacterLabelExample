//
//  FKFlickrPlacesFind.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPlacesFind.h" 

@implementation FKFlickrPlacesFind

- (BOOL) needsLogin {
    return NO;
}

- (BOOL) needsSigning {
    return NO;
}

- (FKPermission) requiredPerms {
    return -1;
}

- (NSString *) name {
    return @"flickr.places.find";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.query) {
		valid = NO;
		[errorDescription appendString:@"'query', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.query) {
		[args setValue:self.query forKey:@"query"];
	}
	if(self.bbox) {
		[args setValue:self.bbox forKey:@"bbox"];
	}
	if(self.extras) {
		[args setValue:self.extras forKey:@"extras"];
	}
	if(self.safe) {
		[args setValue:self.safe forKey:@"safe"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPlacesFindError_RequiredParameterMissing:
			return @"Required parameter missing";
		case FKFlickrPlacesFindError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPlacesFindError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPlacesFindError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPlacesFindError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPlacesFindError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPlacesFindError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPlacesFindError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end